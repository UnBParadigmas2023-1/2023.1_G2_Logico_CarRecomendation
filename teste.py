import csv


def csv_to_prolog(csv_file, prolog_file):
    with open(csv_file, "r") as file:
        reader = csv.reader(file)
        data = list(reader)

    with open(prolog_file, "w") as file:
        # Escreve os fatos para as colunas
        for col_index in range(len(data[0])):
            if data[0][col_index] == "name":
                continue
            column_values = set()
            for row_index in range(1, len(data)):
                column_values.add(data[row_index][col_index])
            for value in column_values:
                file.write(f"{data[0][col_index]}({value}).\n")

        # Escreve os fatos para as linhas
        for row_index in range(1, len(data)):
            row_facts = ", ".join(data[row_index][1:])
            file.write(f"car({data[row_index][0]}, {row_facts}).\n")


def main():
    csv_file = "car.csv"
    prolog_file = "dados_prolog.pl"
    csv_to_prolog(csv_file, prolog_file)


if __name__ == "__main__":
    main()

#!/bin/bash
# Autor: Jaroslav Brazovskihh
# Kuupäev: 26.10.2026
# Versioon: 1.0
# Kirjeldus: Sisaldab süsteemiinfo kuvamise funktsioone.

# Kuvab sisse logitud kasutaja nime.
show_username() {
    echo "Kasutajanimi: $USER"
}

# Kuvab kuupäeva ja kellaaja.
show_datetime() {
    echo "Kuupäev ja kellaaeg: $(date '+%d.%m.%Y %H:%M:%S')"
}

# Kuvab arvuti tööaja.
show_uptime() {
    echo "Arvuti tööaeg: $(uptime -p)"
}





# Kuvab skriptimise kaustas olevad .txt-failid.
list_txt_files() {
    local file
    local leitud=0

    for file in "$HOME"/skriptimine/*.txt; do
        if [ -f "$file" ]; then
            echo "Leitud tekstifail: $(basename "$file")"
            leitud=1
        fi
    done

    if [ "$leitud" -eq 0 ]; then
        echo "Kaustas ei ole .txt-faile."
    fi
}




# Kontrollib, kas kasutaja on root.
check_root() {
    if [ "$USER" = "root" ]; then
        echo "Kasutaja on root."
    else
        echo "Kasutaja ei ole root."
    fi
}


<?php
$montableau1 = [1, 6, 8, 3, ["sonia", "ben", "Châu", "Matthieu", "Seyit", "Mathieu"], 150, 27];
$montableau2 = ["Laurent", "Aurélie", 17, [1245, 28, 138, 4825, ["a", "b", "x", "anticonstitutionnellement"], 1], "Zied", "Ludo", "Rahma", "fabrice", "Rémy"];

typeTableau($montableau1);
typeTableau($montableau2);


triTableau($montableau1);
triTableau($montableau2)

function typeTableau(array $data)
{
    $temp = [];
    for ($i = 0; $i < count($data); $i++) {
        $type = gettype($data[$i]);
        echo $type . '<br/>';
    }
    sort($data);
    return $data;
}

function triTableau(array $data)
{
    $temp = [];
    for ($i = 0; $i < count($data); $i++) {
        $type = gettype($data[$i]);
        if ($type != 'array') {
            $temp[] = $data[$i];
        } else {
            $temp[] = triTableau($data[$i]);
        }
    }
    sort($temp, SORT_STRING | SORT_FLAG_CASE);
    return $temp;
}



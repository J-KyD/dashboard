public function getHTML($data)
{
    $output = '
        <table>
            <thead>
                <tr>
                    <th>Column 1</th>
                    <th>Column 2</th>
                    <th>Column 3</th>
                </tr>
            </thead>
            <tbody>';

    foreach ($data as $row) {
        $output .= '
            <tr>
                <td>'.$row->column_1.'</td>
                <td>'.$row->column_2.'</td>
                <td>'.$row->column_3.'</td>
            </tr>';
    }

    $output .= '
            </tbody>
        </table>';

    return $output;
}
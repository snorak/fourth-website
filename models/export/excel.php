<?php
    require_once "../../config/connection.php";
    include "../functions.php";

    $movies = get_all_movies();

    $excel = new COM("Excel.Application");  
    $excel->Visible = true;
    $workbook = $excel->Workbooks->Add();
    $sheet = $workbook->Worksheets('Sheet1');
    $sheet->activate;

    $count = 1;

    foreach($movies as $movie){
    
        $cell = $sheet->Range("A{$count}");
        $cell->activate;
        $cell->value = $movie->idMovie;
    
        $cell = $sheet->Range("B{$count}");
        $cell->activate;
        $cell->value = $movie->movieHeading;
    
        $cell = $sheet->Range("C{$count}");
        $cell->activate;
        $cell->value = $movie->movieDate;
    
        $cell = $sheet->Range("D{$count}");
        $cell->activate;
        $cell->value = $movie->movieRating;
    
        $count++;
    }

    $cell = $sheet->Range("E{$count}");
    $cell->activate;
    $cell->value = count($movies);

    $workbook->_SaveAs("http://strahinja2112.000webhostapp.com/models/movies/Movies.xlsx", -4143);
    $workbook->Save();

    $workbook->Saved=true;
    $workbook->Close;

    $excel->Workbooks->Close();
    $excel->Quit();

    unset($sheet);
    unset($workbook);
    unset($excel);

?>
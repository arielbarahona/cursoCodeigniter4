<?php

if(!function_exists('nav')){
    function nav_menu(): void{
        //rutas
         $list =[
            ['dashboard',true],
            ['posts',true],
            ['profile',true],
            ['ajax',true],
            ['relations',true],
            ['logout',true],
            ['login',false],
            ['register',false]
        ];

        // $list =[
        //     ['dashboard',false],
        //     ['posts',false],
        //     ['profile',false],
        //     ['ajax',false],
        //     ['relations',false],
        //     ['logout',false],
        //     ['login',true],
        //     ['register',true]
        // ];

        $request=\Config\Services::request();
        $segment=$request->uri->getSegment(1);

        foreach($list as $li) {
			if($li[1] && session()->has('id')) { // logged
				echo nav_item($segment, $li);
			} else if( ! $li[1] && ! session('id')) { // not logged
				echo nav_item($segment, $li);
			}
		}
    }
}

if ( ! function_exists ('nav_item')) {
	function nav_item (string $segment, array $li): string {
		$active = $segment === $li[0] ? ' active' : '';
		$html = '<li class="nav-item' . $active . '">';
		$html.= '<a class="nav-link" href="' . base_url(strtolower($li[0])) . '">';
		$html.= ucfirst($li[0]);
		$html.= '</a>';
		$html.= '</li>';
		return $html;
	}
}



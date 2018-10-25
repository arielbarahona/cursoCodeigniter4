<?php
namespace App\Libraries;

use App\Models\Post;

class Widgets {
	public function recentPosts (int $limit): string {
		$postModel = new Post;
		$posts = $postModel->findAll($limit);
		return view('widgets/recent_posts', compact('posts'));
	}
}
<?php
class ControllerExtensionModuleVideogallary extends Controller {
	public function index($setting) {
		static $module = 0;		

		$this->load->model('design/banner');
		$this->load->model('tool/image');
        $this->load->language('extension/module/videogalerry');

        $data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

        $data['text_head']=$this->language->get('text_head');


        foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['module'] = $module++;
		return $this->load->view('extension/module/videogallary', $data);
	}
}
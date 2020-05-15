package wooteco.subway.admin.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import wooteco.subway.admin.repository.StationRepository;

@Controller
public class PageController {
    private StationRepository stationRepository;

    public PageController(StationRepository stationRepository) {
        this.stationRepository = stationRepository;
    }

    @GetMapping(value = "/", produces = MediaType.TEXT_HTML_VALUE)
    public String index() {
        return "admin/index";
    }

    @GetMapping(value = "/stations", produces = MediaType.TEXT_HTML_VALUE)
    public String stationPage(Model model) {
        model.addAttribute("stations", stationRepository.findAll());
        return "admin/admin-station";
    }

    @GetMapping(value = "/edges", produces = MediaType.TEXT_HTML_VALUE)
    public String edgePage(Model model) {
        return "admin/admin-edge";
    }

    @GetMapping(value = "/lines/map", produces = MediaType.TEXT_HTML_VALUE)
    public String mapPage(Model model) {
        return "service/map";
    }

    @GetMapping(value = "/search", produces = MediaType.TEXT_HTML_VALUE)
    public String searchPage(Model model) {
        return "service/search";
    }
}

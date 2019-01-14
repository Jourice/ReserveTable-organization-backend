package ru.reservetable.prototype.organization.rest.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.ws.Response;

@RestController
@RequestMapping("/api/organization")
public class OrganizationController {

    @GetMapping(value = "/book")
    public ResponseEntity<String> test(){
        // ToDO add some logic here
        return new ResponseEntity<>("Your table has been booked successfully", HttpStatus.OK);
    }

}

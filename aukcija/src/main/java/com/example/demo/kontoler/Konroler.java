package com.example.demo.kontoler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.repozitori.BidRep;
import com.example.demo.repozitori.CategoryRep;
import com.example.demo.repozitori.ItemRepozitorijum;
import com.example.demo.repozitori.UserRep;

import model.Bid;
import model.Category;
import model.Item;
import model.Serviceuser;

@Controller
@RequestMapping(value = "/kontroler")
public class Konroler {

	@Autowired
	UserRep ur;
	@Autowired
	ItemRepozitorijum ir;
	@Autowired
	BidRep br;
	@Autowired
	CategoryRep cr;

	@RequestMapping(value = "unesi", method = RequestMethod.POST)
	public String sacuvaj(HttpServletRequest request, String username, String sifra, String adresa, String ime,
			String prezime, String telefon, String drzava, String grad) {

		Serviceuser s = new Serviceuser();
		s.setUsername(username);
		s.setPassword(sifra);
		s.setEmail(adresa);
		s.setFirstName(ime);
		s.setLastName(prezime);
		s.setPhoneNumber(telefon);
		s.setCountry(drzava);
		s.setCity(grad);
		Serviceuser ss = ur.save(s);
		request.getSession().setAttribute("user", ss);
		return "/registracija";

	}

	@RequestMapping(value = "logovanje", method = RequestMethod.GET)
	public String logovanje(HttpServletRequest request, String username, String sifra) {
		Serviceuser s = ur.findByUsernameAndPassword(username, sifra);
		request.getSession().setAttribute("user", s);
		if (s == null)
			return "eror";
		return "/meni";
	}

	@RequestMapping(value = "sviItemi", method = RequestMethod.GET)
	public String sviItemi(HttpServletRequest request) {
		List<Item> lista = ir.findAll();
		request.getSession().setAttribute("lista", lista);
		return "/sviItemi";
	}

	@RequestMapping(value = "detalji", method = RequestMethod.GET)
	public String detalji(HttpServletRequest request, int id) {
		Item i = ir.findById(id).get();
		return "";
	}

	@RequestMapping(value = "sviBidovi", method = RequestMethod.GET)
	public String sviBidovi(HttpServletRequest request) {
		List<Bid> lista = br.findAll();
		List <Category> c = cr.findAll();
		request.getSession().setAttribute("lista", lista);
		request.getSession().setAttribute("c", c);
		return "/sviBidnovi";
	}
	@RequestMapping(value = "sviUcesnici", method = RequestMethod.GET)
	public String sviUcesnici(HttpServletRequest request, int id) {
		Bid b = br.findById(id).get();
		request.getSession().setAttribute("bid", b);
		return "sviUcesnici";
		
		
	}
	@RequestMapping(value = "poKategorijama", method = RequestMethod.GET)
	public String poKategorijama(HttpServletRequest request, int boxC) {
		List<Bid> list = br.findBidByCategory(boxC);
		request.getSession().setAttribute("lista", list);
		return "sviBidnovi";
	}
	
	
	
	
	
}
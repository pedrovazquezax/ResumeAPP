//
//  Models.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 05/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//


import UIKit

struct EducationSection {
    let education: [Education]
    let titleSection: String
}

struct Education {
    let school: String
    let schoolImage: UIImage
    let dates: String
    let title: String
}
struct SkillSection{
    let skills:[Skill]
    let titleSection:String
}
struct  Skill {
    let skillImage:UIImage
    let skillName:String
    let skillLevel:String
}

struct AwardSection{
    let awards:[Award]
    let titleSection:String
}

struct Award {
    let awardImage:UIImage
    let awardName:String
    let awardText:String
}

    // MARK:  Education

let unam = Education(school: "Universidad Nacional Autónoma de México (UNAM)", schoolImage: UIImage(named: "unam")!, dates: "Julio 2014 - Actual", title: "Ingeniería en Computacion")
let diplo = Education(school: "Facultad de Ingeniería (UNAM)", schoolImage: UIImage(named: "swift")!, dates: "Agosto 2019 - Febrero 2020", title: "Diplomado de Desarrollo de Aplicaciones Móviles en iOS")
let ccpm1 = Education(school: "CCPM(Centro de Computación Profesional de México)", schoolImage: UIImage(named: "ccpm")!, dates: "Enero 2011 - Enero 2012", title: "Técnico en Diseño Grafico")
let ccpm2 = Education(school: "CCPM(Centro de Computación Profesional de México)", schoolImage: UIImage(named: "ccpm")!, dates: "Enero 2010 - Enero 2011", title: "Técnico en Sistemas Compuacionales")

let sectionEducation = EducationSection(education: [unam,diplo,ccpm1,ccpm2], titleSection: "Educación")

let tecdmx = Education(school: "TECDMX(Tribunal Electoral de la Ciudad de México)", schoolImage: UIImage(named: "tecdmx")!, dates: "Diciembre 2018 - Abril 2019", title: "Desarrollador JAVA")
let inifed = Education(school: "INIFED(Intituto Nacional de la Infraestructura Fisica Educativa)", schoolImage: UIImage(named: "inifed")!, dates: "Julio 2019 - Enero 2020", title: "Desarrollador PHP")
let sectionProfesionalExperience = EducationSection(education: [tecdmx,inifed], titleSection: "Experiencia Profesional")

let iOSLab = Education(school: "iOS Development Lab", schoolImage: UIImage(named: "ios")!, dates: "Septiembre 2018 - Actual", title: "Mentor")
let saic = Education(school: "SAIC(Sociedad de Alumnos de Imgeniería en Computación)", schoolImage: UIImage(named: "saic")!, dates: "Julio 2017 - Septiembre 2019", title: "Vicepresidente")
let sectionExtracurricularActivity = EducationSection(education: [iOSLab,saic], titleSection: "Actividad Extracurricular")

let educationSections = [sectionEducation,sectionProfesionalExperience,sectionExtracurricularActivity]

    // MARK:  Skills

let swift = Skill(skillImage: UIImage(named: "swift")!, skillName: "Swift", skillLevel: "Avanzado")
let ruby = Skill(skillImage: UIImage(named: "ruby")!, skillName: "Ruby", skillLevel: "Intermedio")
let python = Skill(skillImage: UIImage(named: "python")!, skillName: "Python", skillLevel: "Principiante")
let c = Skill(skillImage: UIImage(named: "c")!, skillName: "C/C++", skillLevel: "Intermedio")
let java = Skill(skillImage: UIImage(named: "java")!, skillName: "Java", skillLevel: "Intermedio")
let languajesSection = SkillSection(skills: [swift,ruby,python,c,java], titleSection: "Lenguajes de Programación")


let css = Skill(skillImage: UIImage(named: "css")!, skillName: "CSS", skillLevel: "Avanzado")
let js = Skill(skillImage: UIImage(named: "js")!, skillName: "JavaScript", skillLevel: "Intermedio")
let php = Skill(skillImage: UIImage(named: "php")!, skillName: "PHP", skillLevel: "Intermedio")
let html = Skill(skillImage: UIImage(named: "html")!, skillName: "HTML", skillLevel: "Intermedio")
let webDevelopmentSection = SkillSection(skills: [php,html,js,css], titleSection: "Desarrollo Web")




let esp = Skill(skillImage: UIImage(named: "english")!, skillName: "Ingles", skillLevel: "80%")
let eng = Skill(skillImage: UIImage(named: "spanish")!, skillName: "Español", skillLevel: "Nativo")

let ai = Skill(skillImage: UIImage(named: "ai")!, skillName: "Illustrator", skillLevel: "Avanzado")
let ps = Skill(skillImage: UIImage(named: "ps")!, skillName: "PhotoShop", skillLevel: "Intermedio")
let sketch = Skill(skillImage: UIImage(named: "sketch")!, skillName: "Sketch", skillLevel: "Intermedio")

let designSection = SkillSection(skills: [ai,ps,sketch], titleSection: "Diseño")


let idiomasSection = SkillSection(skills: [esp,eng], titleSection: "Idiomas")

let skillSections = [languajesSection,webDevelopmentSection,idiomasSection,designSection]


// MARK:  Awards

let ticket = Award(awardImage: UIImage(named: "ticket")!, awardName: "Ticketizame", awardText: "Desarrollo de App")
let haffe = Award(awardImage: UIImage(named: "haffe")!, awardName: "Haffe", awardText: "Proyecto Hackathon")
let famHealth = Award(awardImage: UIImage(named: "famHealth")!, awardName: "Family Health", awardText: "Proyecto Hackathon")
let mechat = Award(awardImage: UIImage(named: "mechat")!, awardName:"MeChat", awardText: "Proyecto Hackathon")
let proyectSection = AwardSection(awards: [haffe,famHealth,ticket,mechat], titleSection: "Proyectos")


let mxhack = Award(awardImage: UIImage(named: "mxhacks")!, awardName: "MX Hacks", awardText: "Primer Lugar")
let hackHealth = Award(awardImage: UIImage(named: "HHealth")!, awardName: "Hacking Health", awardText: "Segundo Lugar")

let nationalProyectSection = AwardSection(awards: [mxhack,hackHealth], titleSection: "Premios Nacionales")

let mhack = Award(awardImage: UIImage(named: "mhacks")!, awardName: "M Hacks V", awardText: "Finales")
let medHacks = Award(awardImage: UIImage(named: "medHack")!, awardName: "Med Hacks", awardText: "Participacion")

let internationalProyectSection = AwardSection(awards: [mhack,medHacks], titleSection: "Premios Internacionales")

let awardsSetcions = [proyectSection,nationalProyectSection,internationalProyectSection]


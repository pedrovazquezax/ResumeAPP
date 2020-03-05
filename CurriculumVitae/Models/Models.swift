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

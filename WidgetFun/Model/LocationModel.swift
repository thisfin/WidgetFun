//
//  LocationModel.swift
//  WidgetFun
//
//  Created by 李毅 on 2021/5/14.
//

import Foundation
import HandyJSON

class LocationModel: BaseLocationModel {
    var consolidatedWeather: [ConsolidatedWeatherModel]?
    var time: String?
    var sunRise: String?
    var sunSet: String?
    var timezoneName: String?
    var parent: LocationParentModel?
    var sources: [LocationSource]?
    var timezone: String?

    required init() {}

    override func mapping(mapper: HelpingMapper) {
        super.mapping(mapper: mapper)

        mapper <<< consolidatedWeather <-- "consolidated_weather"
        mapper <<< sunRise <-- "sun_rise"
        mapper <<< sunSet <-- "sun_set"
        mapper <<< timezoneName <-- "timezone_name"
    }
}

class BaseLocationModel: HandyJSON {
    var title: String?
    var locationType: String?
    var woeid: String?
    var lattLong: String?

    required init() {}

    func mapping(mapper: HelpingMapper) {
        mapper <<< locationType <-- "location_type"
        mapper <<< lattLong <-- "latt_long"
    }
}

class LocationParentModel: BaseLocationModel {
}

class LocationSource {
    var title: String?
    var slug: String?
    var url: String?
    var crawlRate: Int?

    required init() {}
}

extension LocationSource: HandyJSON {
    func mapping(mapper: HelpingMapper) {
        mapper <<< crawlRate <-- "crawl_rate"
    }
}

class ConsolidatedWeatherModel {
    var id: UInt?
    var weatherStateName: String?
    var weatherStateAbbr: String?
    var windDirectionCompass: String?
    var created: String?
    var applicableDate: String?
    var minTemp: Float?
    var maxTemp: Float?
    var theTemp: Float?
    var windSpeed: Float?
    var windDirection: Float?
    var airPressure: Float?
    var humidity: Int?
    var visibility: Float?
    var predictability: Int?

    required init() {}
}

extension ConsolidatedWeatherModel: HandyJSON {
    func mapping(mapper: HelpingMapper) {
        mapper <<< weatherStateName <-- "weather_state_name"
        mapper <<< weatherStateAbbr <-- "weather_state_abbr"
        mapper <<< windDirectionCompass <-- "wind_direction_compass"
        mapper <<< applicableDate <-- "applicable_date"
        mapper <<< minTemp <-- "min_temp"
        mapper <<< maxTemp <-- "max_temp"
        mapper <<< theTemp <-- "the_temp"
        mapper <<< windSpeed <-- "wind_speed"
        mapper <<< windDirection <-- "wind_direction"
        mapper <<< airPressure <-- "air_pressure"
    }
}

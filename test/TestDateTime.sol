pragma solidity ^0.8.0;

import "BokkyPooBahsDateTimeLibrary.sol";

// ----------------------------------------------------------------------------
// Testing BokkyPooBah's DateTime Library
//
// https://github.com/bokkypoobah/BokkyPooBahsDateTimeLibrary
//
// Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2018-2019. The MIT Licence.
// ----------------------------------------------------------------------------

contract TestDateTime {
    using BokkyPooBahsDateTimeLibrary for uint256;

    uint256 public nextYear;

    function test() public {
        uint256 today = now;
        nextYear = today.addYears(1);
    }

    function timestampFromDate(uint256 year, uint256 month, uint256 day) public pure returns (uint256 timestamp) {
        return BokkyPooBahsDateTimeLibrary.timestampFromDate(year, month, day);
    }

    function timestampFromDateTime(
        uint256 year,
        uint256 month,
        uint256 day,
        uint256 hour,
        uint256 minute,
        uint256 second
    )
        public
        pure
        returns (uint256 timestamp)
    {
        return BokkyPooBahsDateTimeLibrary.timestampFromDateTime(year, month, day, hour, minute, second);
    }

    function timestampToDate(uint256 timestamp) public pure returns (uint256 year, uint256 month, uint256 day) {
        (year, month, day) = BokkyPooBahsDateTimeLibrary.timestampToDate(timestamp);
    }

    function timestampToDateTime(uint256 timestamp)
        public
        pure
        returns (uint256 year, uint256 month, uint256 day, uint256 hour, uint256 minute, uint256 second)
    {
        (year, month, day, hour, minute, second) = BokkyPooBahsDateTimeLibrary.timestampToDateTime(timestamp);
    }

    function isLeapYear(uint256 timestamp) public pure returns (bool leapYear) {
        leapYear = BokkyPooBahsDateTimeLibrary.isLeapYear(timestamp);
    }

    function _isLeapYear(uint256 year) public pure returns (bool leapYear) {
        leapYear = BokkyPooBahsDateTimeLibrary._isLeapYear(year);
    }

    function isWeekDay(uint256 timestamp) public pure returns (bool weekDay) {
        weekDay = BokkyPooBahsDateTimeLibrary.isWeekDay(timestamp);
    }

    function isWeekEnd(uint256 timestamp) public pure returns (bool weekEnd) {
        weekEnd = BokkyPooBahsDateTimeLibrary.isWeekEnd(timestamp);
    }

    function getDaysInMonth(uint256 timestamp) public pure returns (uint256 daysInMonth) {
        daysInMonth = BokkyPooBahsDateTimeLibrary.getDaysInMonth(timestamp);
    }

    function _getDaysInMonth(uint256 year, uint256 month) public pure returns (uint256 daysInMonth) {
        daysInMonth = BokkyPooBahsDateTimeLibrary._getDaysInMonth(year, month);
    }

    function getDayOfWeek(uint256 timestamp) public pure returns (uint256 dayOfWeek) {
        dayOfWeek = BokkyPooBahsDateTimeLibrary.getDayOfWeek(timestamp);
    }

    function isValidDate(uint256 year, uint256 month, uint256 day) public pure returns (bool valid) {
        valid = BokkyPooBahsDateTimeLibrary.isValidDate(year, month, day);
    }

    function isValidDateTime(uint256 year, uint256 month, uint256 day, uint256 hour, uint256 minute, uint256 second)
        public
        pure
        returns (bool valid)
    {
        valid = BokkyPooBahsDateTimeLibrary.isValidDateTime(year, month, day, hour, minute, second);
    }

    function getYear(uint256 timestamp) public pure returns (uint256 year) {
        year = BokkyPooBahsDateTimeLibrary.getYear(timestamp);
    }

    function getMonth(uint256 timestamp) public pure returns (uint256 month) {
        month = BokkyPooBahsDateTimeLibrary.getMonth(timestamp);
    }

    function getDay(uint256 timestamp) public pure returns (uint256 day) {
        day = BokkyPooBahsDateTimeLibrary.getDay(timestamp);
    }

    function getHour(uint256 timestamp) public pure returns (uint256 hour) {
        hour = BokkyPooBahsDateTimeLibrary.getHour(timestamp);
    }

    function getMinute(uint256 timestamp) public pure returns (uint256 minute) {
        minute = BokkyPooBahsDateTimeLibrary.getMinute(timestamp);
    }

    function getSecond(uint256 timestamp) public pure returns (uint256 second) {
        second = BokkyPooBahsDateTimeLibrary.getSecond(timestamp);
    }

    function addYears(uint256 timestamp, uint256 _years) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.addYears(timestamp, _years);
    }

    function addMonths(uint256 timestamp, uint256 _months) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.addMonths(timestamp, _months);
    }

    function addDays(uint256 timestamp, uint256 _days) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.addDays(timestamp, _days);
    }

    function addHours(uint256 timestamp, uint256 _hours) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.addHours(timestamp, _hours);
    }

    function addMinutes(uint256 timestamp, uint256 _minutes) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.addMinutes(timestamp, _minutes);
    }

    function addSeconds(uint256 timestamp, uint256 _seconds) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.addSeconds(timestamp, _seconds);
    }

    function subYears(uint256 timestamp, uint256 _years) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.subYears(timestamp, _years);
    }

    function subMonths(uint256 timestamp, uint256 _months) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.subMonths(timestamp, _months);
    }

    function subDays(uint256 timestamp, uint256 _days) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.subDays(timestamp, _days);
    }

    function subHours(uint256 timestamp, uint256 _hours) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.subHours(timestamp, _hours);
    }

    function subMinutes(uint256 timestamp, uint256 _minutes) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.subMinutes(timestamp, _minutes);
    }

    function subSeconds(uint256 timestamp, uint256 _seconds) public pure returns (uint256 newTimestamp) {
        newTimestamp = BokkyPooBahsDateTimeLibrary.subSeconds(timestamp, _seconds);
    }

    function diffYears(uint256 fromTimestamp, uint256 toTimestamp) public pure returns (uint256 _years) {
        _years = BokkyPooBahsDateTimeLibrary.diffYears(fromTimestamp, toTimestamp);
    }

    function diffMonths(uint256 fromTimestamp, uint256 toTimestamp) public pure returns (uint256 _months) {
        _months = BokkyPooBahsDateTimeLibrary.diffMonths(fromTimestamp, toTimestamp);
    }

    function diffDays(uint256 fromTimestamp, uint256 toTimestamp) public pure returns (uint256 _days) {
        _days = BokkyPooBahsDateTimeLibrary.diffDays(fromTimestamp, toTimestamp);
    }

    function diffHours(uint256 fromTimestamp, uint256 toTimestamp) public pure returns (uint256 _hours) {
        _hours = BokkyPooBahsDateTimeLibrary.diffHours(fromTimestamp, toTimestamp);
    }

    function diffMinutes(uint256 fromTimestamp, uint256 toTimestamp) public pure returns (uint256 _minutes) {
        _minutes = BokkyPooBahsDateTimeLibrary.diffMinutes(fromTimestamp, toTimestamp);
    }

    function diffSeconds(uint256 fromTimestamp, uint256 toTimestamp) public pure returns (uint256 _seconds) {
        _seconds = BokkyPooBahsDateTimeLibrary.diffSeconds(fromTimestamp, toTimestamp);
    }
}

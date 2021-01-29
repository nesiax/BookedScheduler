{*
Copyright 2021 Nestor Diaz
Copyright 2011-2020 Nick Korbel

This file is part of Booked Scheduler.

Booked Scheduler is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Booked Scheduler is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Booked Scheduler.  If not, see <http://www.gnu.org/licenses/>.
*}
{include file='globalheader.tpl'}

<div id="page-usage" class="admin-page">

    <div class="default-box col-xs-12 col-sm-8 col-sm-offset-2">

      <h1>Usage of PG Booked Scheduler</h1>


      <h2>Registration</h2>

      <p>Registration is required in order to use Booked
      Scheduler. After your account has been registered you will be
      able to log in and access any resources that you have permission
      to.</p>
      <p>To register an account, click the Register link from the
      login page. Alternatively, an administrator can create an
      account for you.</p>

      <h2>Booking</h2>

      <p>Under the Schedule menu item you will find the Bookings
      item. This will show you the available, reserved and blocked
      slots on the schedule and allow you to book resources that you
      have permission to.</p>
      <p>On the Bookings page, find the resource, date and time you’d
      like to book. Clicking on the time slot will allow you change
      the details of the reservation. Clicking the Create button will
      check availability, book the reservation and send out any
      emails. You will be given a reference number to use for
      reservation follow-up.</p>
      <p>Any changes made to a reservation will not take effect until
      you save the reservation.</p>
      <p>By default, only Application Administrators can create
      reservations in the past.</p>
      <h3>Find a Time</h3>
      <p>Under Schedule there is an option to Find A Time. This gives
      you the ability to search for any available slot that meets your
      criteria. This is a quick way to simply find any resource that
      is available for the length of time needed.</p>
      <h3>Multiple Resources</h3>
      <p>You can book all resources that you have permission as part
      of a single reservation. To add more resources to your
      reservation, click the More Resources link, displayed next to
      the name of the primary resource you are reserving. You will
      then able to add more resources by selecting them and clicking
      the Done button.</p>
      <p>To remove additional resources from your reservation, click
      the More Resources link, deselect the resources you want to
      remove, and click the Done button.</p>
      <p>Additional resources will be subject to the same rules as
      primary resources. For example, this means that if you attempt
      to create a 2 hour reservation with Resource 1, which has a
      maximum length of 3 hours and with Resource 2, which has a
      maximum length of 1 hour, your reservation will be denied.</p>
      <p>You can view the configuration details of a resource by
      hovering over the resource name.</p>
      <p>It is important to note that your administrator may have
      disabled or limited the ability to book more than one resource
      per reservation.</p>

      <h3>Recurring Dates</h3>
      <p>A reservation can be configured to recur a number of
      different ways. These options allow for flexible recurrence
      possibilities.</p>
      <p>Repeat Daily sets a reservation to recur on a daily
      interval. For example, Repeat Daily every 2 days will create a
      reservation every other day at your specified time.</p>
      <p>Repeat Weekly sets a reservation to recur on a weekly
      interval and optionally, specific days of the week. Foe example,
      Repeat Weekly every 1 week on Monday, Wednesday, Friday will
      create a reservation on each of those days every week at your
      specified time.</p>
      <p>Repeat Monthly sets a reservation to recur monthly on the
      specific day of the month or the specific week of the month. For
      example, if it were the 2nd Wednesday of the month, Repeat
      Monthly on the day of the week would repeat the reservation at
      your specified time every 2nd Wednesday of the month. If it was
      the 10th of the month, Repeat Monthly on the day of the month
      would repeat the reservation at your specified time on the 10th
      of every month</p>
      <p>Repeat Yearly sets a reservation to recur on the same date
      and time every year.</p>
      <p>Repeat Custom allows you to pick specific dates to repeat the
      reservation on. The reservation will occur on all selected dates
      at your specified time.</p>
      <p>It is important to note that your administrator may have
      disabled the ability to create recurring reservations.</p>
      <h3>Additional Participants</h3>
      <p>You can either Add Participants or Invite Others when booking
      a reservation. Adding someone will include them on the
      reservation. The added user will receive an email, but will not
      have an option to accept or decline.</p>
      <p>Inviting a user will send an invitation email and give the
      user an option to accept or cecline the invitation. Accepting an
      invitation adds the user to the participants list. Declining an
      invitation removes the user from the invitees list.</p>
      <p>The total number of participants is limited by the resource’s
      participant capacity.</p>
      <p>It is important to note that your administrator may have
      disabled the ability to add participants.</p>
      <h3>Accessories</h3>
      <p>Accessories can be thought of as objects used during a
      reservation. Examples may be projectors or chairs.</p>
      <p>To add accessories to your reservation, click the Add link to
      the right of the Accessories title. From there you will be able
      to select a quantity for each of the available accessories. The
      quantity available during your reservation time will depend on
      how many accessories are already reserved and may be limited by
      your administrator.</p>
      <h3>Booking on behalf of others</h3>
      <p>Application Administrators and Group Administrators can book
      reservations on behalf of other users by clicking the Change
      link to the right of the user’s name.</p>
      <p>Application Administrators and Group Administrators can also
      modify and delete reservations owned by other users</p>

      <h2>Updating a Reservation</h2>

      <p>You can only update any reservation that you have created or
      that was created on your behalf.</p>
      <p>To update a reservation, find it on the Schedule, click to
      open, update as needed, and click Update to save your
      changes.</p>
      <p>By default, you cannot update a reservation that is in the
      past, though you administrator may change this option.</p>
      <h3>Updating Specific Instances From a Series</h3>
      <p>If a reservation is set up to repeat, then a series is
      created. After you make changes and Update the reservation, you
      will be asked which instances of the series you want to apply
      the changes to.</p>
      <p>You can apply your changes to the instance that you are
      viewing (Only This Instance) and no other instances will be
      changed.</p>
      <p>You can update All Instances to apply the change to every
      reservation instance that has not yet occurred.</p>
      <p>You can apply the change only to Future Instances, which will
      update all reservation instances including and after the
      instance you are currently viewing.</p>

      <h2>Deleting a Reservation</h2>

      <p>Deleting a reservation completely removes it from the
      schedule.</p>
      <p>By default, you cannot delete a reservation that is in the
      past, though you administrator may change this option.</p>
      <h3>Deleting Specific Instances From a Series</h3>
      <p>Similar to updating a reservation, when deleting you will be
      prompted to select which instances of a series you want to
      delete.</p>

      <h2>Email Notifications</h2>

      <p>You can opt-in to be sent email notifications for different
      events. Email notifications can be enabled or disabled in
      Notification Preferences section under My Account.</p>
      <p>You can choose to receive notifications for new reservations,
      reservation updates, reservation deletions, reservation
      approvals, participation changes, or when a recurring series end
      date is approaching.</p>

      <h2>Credits</h2>

      <p>Credits give administrators control over resource usage.</p>
      <p>A resource may be configured to consume a certain number of
      credits per slot. If you don not have enough credits, you will
      not be allowed to complete a booking.</p>
      <p>You can view your credit usage in the Credits section under
      My Account</p>
      <h3>Paying for Reservation Usage</h3>
      <p>Reservations can be paid for using credits.</p>
      <p>If you do not have enough credits to complete a reservation,
      you can purchase credits in the Credits section of My
      Account.</p>
      <p>You can also view your purchase history and credit usage
      history in the Credits section of My Account</p>

      <h2>External Calendar Integration</h2>

      <h3>Manual Additions</h3>
      <p>If you have opted in to receive email notifications, you will
      be sent a special calendar attachment (.ics). This attachment
      can be opened in any calendar application, such as Microsoft
      Outlook.</p>
      <p>When viewing or updating a reservation there are two options
      under the More menu for adding this reservation to an external
      calendar.</p>
      <p>Choosing Add to Calendar will add the event directly to
      Outlook, if it is installed on your computer. If it is not
      installed you will be prompted to download an .ics file. This is
      a standard calendar format file. You can use this file to add
      the reservation to any application that supports the iCalendar
      file format.</p>
      <p>Choosing Add to Google will open Google Calendar with a
      pre-populated event.</p>
      <p>It is important to note that reservation updates or deletions
      from Booked are not automatically reflected in external
      calendars.</p>
      <h3>Subscribing to Calendars</h3>
      <p>In order for new reservations to automatically show in an
      external calendar and for updates and deletions to be reflected,
      you must subscribe to a calendar.</p>
      <p>Calendars can be published for Schedules, Resources and
      Users. For this feature to work, the administrator must have
      enabled it.</p>
      <p>To enable Schedule and Resource level calendar subscriptions,
      an administrator must have allowed public visibility when
      managing the Schedule or Resource.</p>
      <p>To enable your own personal calendar subscriptions, open
      Schedule &gt; My Calendar. On the right side of the page you
      will find a link to Allow or Turn Off calendar
      subscriptions.</p>
      <p>To subscribe to a Schedule calendar, open Schedule &gt;
      Resource Calendar and select the schedule you want. On the right
      side of the page, you will find a link to subscribe to the
      current calendar. Subscribing the a Resource calendar follows
      the same steps.</p>
      <p>To subscribe to your personal calendar, open Schedule &gt; My
      Calendar. On the right side of the page, you will find a link to
      subscribe to the current calendar.</p>
      <p>By default, events for the next 30 will be returned. This can
      be customized with the following two query string parameters on
      the subscription URL: pastDayCount and futureDayCount will
      override the past and future number of days loaded,
      respectively.</p>
      <h4>Calendar Client Configuration</h4>
      <p>In most cases, simply clicking the Subscribe to this Calendar
      link will automatically set up the subscription in your calendar
      Client.</p>
      <p><strong>Microsoft Outlook</strong></p>
      <p>For Outlook, if it does not automatically add, open the
      Calendar view, then right click My Calendars and choose Add
      Calendar &gt; From Internet. Paste in the URL printed under the
      Subscribe to this Calendar link</p>
      <p><strong>Google Calendar</strong></p>
      <p>Open Google Calendar settings. Click the Calendars tab. Click
      Browse interesting calendars. Click add by URL. Paste in the URL
      printed under the Subscribe to this Calendar link.</p>
      <h3>Embedding a Calendar Externally</h3>
      <p>This requires CORS to be enabled on your server. You can add
      the following to your Apache htaccess file Header Set
      Access-Control-Allow-Origin "*"</p>
      <p>It is simple to include a view of a Booked calendar in an
      external website. Copy and paste the following JavaScript
      reference to your website, updating the src attribute to point
      to your URL.</p>

      <p>&lt;script async
      src="https://localhost/PGBookedScheduler/Web/scripts/embed-calendar.js"
      crossorigin="anonymous"&gt;&lt;/script&gt;</p>
      <p>Only calendars and resources that have been marked as public
      will be shown. If reservations are missing from a schedule or
      resource, it is likely that public visibility has not been
      turned on.</p>
      <p>The following query string arguments are accepted to
        customize the embedded view:</p>

      <table style="border: 1px solid grey;">
        <tr style="border: 1px solid grey;">
          <th style="border: 1px solid grey;">Name</th>
          <th style="border: 1px solid grey;">Possible Values</th>
          <th style="border: 1px solid grey;">Default</th>
          <th style="border: 1px solid grey;">Details</th>
        </tr>
        <tbody>
          <tr style="border: 1px solid grey;">
            <td style="border: 1px solid grey;">type</td>
            <td style="border: 1px solid grey;">agenda, week, month</td>
            <td style="border: 1px solid grey;">agenda</td>
            <td style="border: 1px solid grey;">Controls the view that is shown</td>
          </tr>
          <tr style="border: 1px solid grey;">
            <td style="border: 1px solid grey;">format</td>
            <td style="border: 1px solid grey;">date, title, user, resource</td>
            <td style="border: 1px solid grey;">date</td>
            <td style="border: 1px solid grey;">Controls the information shown in the reservation
            box. Multiple options can be passed. For example, to show
            date and title request date,title</td>
          </tr>
          <tr style="border: 1px solid grey;">
            <td style="border: 1px solid grey;">d</td>
            <td style="border: 1px solid grey;">Any digit between 1 and 30</td>
            <td style="border: 1px solid grey;">7</td>
            <td style="border: 1px solid grey;">Limits the number of days shown for the agenda
            view</td>
          </tr>
          <tr style="border: 1px solid grey;">
            <td style="border: 1px solid grey;">sid</td>
            <td style="border: 1px solid grey;">Any schedule public ID</td>
            <td style="border: 1px solid grey;">All schedules</td>
            <td style="border: 1px solid grey;">Limits the reservations shown to a specific
            schedule</td>
          </tr>
          <tr style="border: 1px solid grey;">
            <td style="border: 1px solid grey;">rid</td>
            <td style="border: 1px solid grey;">Any resource public ID</td>
            <td style="border: 1px solid grey;">All resources</td>
            <td style="border: 1px solid grey;">Limits the reservations shown to a specific
            resource</td>
          </tr>
        </tbody>
      </table>


      <h2>Quotas</h2>

      <p>Your administrator has the ability to configure quota rules
      based on a variety of criteria, such as total hours booked per
      week.</p>
      <p>When attempting to create or update a reservation, if the
      reservation would violate any quota, you will be notified and
      the reservation will be denied.</p>


      <h2>Waiting for Availability</h2>

      <p>When creating or updating a reservation, if the requested
      time is not available you can sign up to be notified if it
      becomes available. This option will be shown after a reservation
      attempt is made.</p>
      <p>Signing up for a wait list does not automatically book the
      time. You will be notified if your requested time is available
      and have the option to book it if you want.</p>
      <p>It is important to note that your administrator may have
      disabled this feature.</p>

    </div>

</div>

{include file="javascript-includes.tpl"}

{include file='globalfooter.tpl'}

{*
For Emacs:
Local Variables:
mode: html
coding: utf-8
End:
*}

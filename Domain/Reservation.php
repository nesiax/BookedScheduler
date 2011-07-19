<?php
require_once(ROOT_DIR . 'lib/Common/namespace.php');

class Reservation
{
	/**
	 * @var string
	 */
	protected $referenceNumber;
	
	/**
	 * @return string
	 */
	public function ReferenceNumber()
	{
		return $this->referenceNumber;
	}
	
	/**
	 * @var Date
	 */
	protected $startDate;
	
	/**
	 * @return Date
	 */
	public function StartDate()
	{
		return $this->startDate;
	}
	
	/**
	 * @var Date
	 */
	protected $endDate;
	
	/**
	 * @return Date
	 */
	public function EndDate()
	{
		return $this->endDate;
	}
	
	/**
	 * @return DateRange
	 */
	public function Duration()
	{
		return new DateRange($this->StartDate(), $this->EndDate());
	}
	
	protected $reservationId;
	
	public function ReservationId()
	{
		return $this->reservationId;
	}

	/**
	 * @var array|int[]
	 */
	private $_participantIds = array();

		/**
	 * @var array|int[]
	 */
	protected $addedParticipants = array();

	/**
	 * @var array|int[]
	 */
	protected $removedParticipants = array();

	/**
	 * @var array|int[]
	 */
	protected $unchangedParticipants = array();

	/**
	 * @var int[]
	 */
	private $_inviteeIds = array();

	/**
	 * @var int[]
	 */
	protected $addedInvitees = array();

	/**
	 * @var int[]
	 */
	protected $removedInvitees = array();

	/**
	 * @var int[]
	 */
	protected $unchangedInvitees = array();

	
	/**
	 * @var ReservationSeries
	 */
	public $series;
	
	public function __construct(ReservationSeries $reservationSeries, DateRange $reservationDate, $reservationId = null, $referenceNumber = null)
	{
		$this->series = $reservationSeries;
		
		$this->SetReservationDate($reservationDate);
		$this->SetReferenceNumber($referenceNumber);
		
		if (!empty($reservationId))
		{
			$this->SetReservationId($reservationId);
		}
		
		if (empty($referenceNumber))
		{
			$this->SetReferenceNumber(uniqid());
		}
	}
	
	public function SetReservationId($reservationId)
	{
		$this->reservationId = $reservationId;
	}
	
	public function SetReferenceNumber($referenceNumber)
	{
		$this->referenceNumber = $referenceNumber;
	}
	
	public function SetReservationDate(DateRange $reservationDate)
	{
		$this->startDate = $reservationDate->GetBegin();
		$this->endDate = $reservationDate->GetEnd();
	}

	/**
	 * @internal
	 * @param array|int[] $participantIds
	 * @return void
	 */
	public function WithParticipants($participantIds)
	{
		$this->_participantIds = $participantIds;
	}

	/**
	 * @internal
	 * @param array|int[] $inviteeIds
	 * @return void
	 */
	public function WithInvitees($inviteeIds)
	{
		$this->_inviteeIds = $inviteeIds;
	}

	/**
	 * @param array|int[] $participantIds
	 * @return void
	 */
	public function ChangeParticipants($participantIds)
	{
		$diff = new ArrayDiff($this->_participantIds, $participantIds);

		$this->addedParticipants = $diff->GetAddedToArray1();
		$this->removedParticipants = $diff->GetRemovedFromArray1();
		$this->unchangedParticipants = $diff->GetUnchangedInArray1();

		$this->_participantIds = $participantIds;
	}

	/**
	 * @return array|int[]
	 */
	public function AddedParticipants()
	{
		return $this->addedParticipants;
	}

	/**
	 * @return array|int[]
	 */
	public function RemovedParticipants()
	{
		return $this->removedParticipants;
	}

	/**
	 * @return array|int[]
	 */
	public function UnchangedParticipants()
	{
		return $this->unchangedParticipants;
	}

	/**
	 * @return array|int[]
	 */
	public function AddedInvitees()
	{
		return $this->addedInvitees;
	}

	/**
	 * @return array|int[]
	 */
	public function RemovedInvitees()
	{
		return $this->removedInvitees;
	}

	/**
	 * @return array|int[]
	 */
	public function UnchangedInvitees()
	{
		return $this->unchangedInvitees;
	}

	/**
	 * @param array|int[] $inviteeIds
	 * @return void
	 */
	public function ChangeInvitees($inviteeIds)
	{
		$diff = new ArrayDiff($this->_inviteeIds, $inviteeIds);

		$this->addedInvitees = $diff->GetAddedToArray1();
		$this->removedInvitees = $diff->GetRemovedFromArray1();
		$this->unchangedInvitees = $diff->GetUnchangedInArray1();

		$this->_inviteeIds = $inviteeIds;
	}
}

?>
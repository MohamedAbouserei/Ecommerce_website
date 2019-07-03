<?php

class Estimate {

    // Estimate Attributes
    private $star;
    private $comment;
    private $date;
    //Estimate Constructor
    function __construct() {

    }
    //getter & setter
    function getStar() {
        return $this->star;
    }

    function getComment() {
        return $this->comment;
    }

    function getDate() {
        return $this->date;
    }

    function setStar($star) {
        $this->star = $star;
    }

    function setComment($comment) {
        $this->comment = $comment;
    }

    function setDate($date) {
        $this->date = $date;
    }
    //class Methods
    public function getOrderEstimate($o_id,$db)
    {
      $sql = "SELECT `comment`,`stars`,`date`
              FROM `estimate`
              WHERE o_id=?";
      $Attibutes=array
      ( $o_id );
      return $db->select($sql,$Attibutes);
    }
    public function setOrderEstimate($o_id,$c_id,$s_id,$c,$s,$db)
    {
      $sql = "INSERT INTO `estimate`(`comment`, `stars`, `date`, `o_id`, `c_id`, `s_id`) VALUES (?,?,?,?,?,?)";
      $Attibutes=array
      ( $c,$s,date('Y-m-d H:i:s'),$o_id,$c_id,$s_id );
      return $db->insert($sql,$Attibutes);
    }
}

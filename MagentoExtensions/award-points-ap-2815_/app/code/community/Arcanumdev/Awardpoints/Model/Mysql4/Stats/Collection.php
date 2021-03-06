<?php
 /*
 * Arcanum Dev AwardPoints
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to arcanumdev@wafunotamago.com so we can send you a copy immediately.
 *
 * @category   Magento Sale Extension
 * @package    AwardPoints
 * @copyright  Copyright (c) 2012 Arcanum Dev. Y.K. (http://arcanumdev.wafunotamago.com)
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */
 class Arcanumdev_Awardpoints_Model_Mysql4_Stats_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract{public function _construct(){parent::_construct(); $this->_init('awardpoints/stats');}public function setPriorityOrder($dir = 'ASC'){$this->setOrder('main_table.priority',$dir);return $this;}public function addClientFilter($id){$this->getSelect()->where('customer_id = ?',$id);return $this;}public function groupByCustomer(){$this->getSelect()->group('main_table.customer_id');return $this;}public function joinValidOrders($customer_id, $order_states){$this->getSelect()->joinLeft( array('ord'=>$this->getTable('sales/order')), 'main_table.order_id = ord.entity_id' ); $this->getSelect()->where('ord.customer_id = ?',$customer_id); $this->getSelect()->where('state in (?)', implode(',',$order_states));return $this;}public function joinFullCustomerPoints($customer_id, $store_id){$cols['points_current'] = 'SUM(main_table.points_current) as nb_credit';$this->getSelect()->from($this->getResource()->getMainTable().' as child_table',$cols) ->where('main_table.customer_id=?',$customer_id) ->where('main_table.awardpoints_account_id = child_table.awardpoints_account_id');if(Mage::getStoreConfig('awardpoints/default/store_scope',$store_id) == 1){$this->getSelect()->where('find_in_set(?, main_table.store_id)',$store_id);}if(Mage::getStoreConfig('awardpoints/default/points_duration',$store_id)){$this->getSelect()->where('( main_table.date_end >= NOW() OR main_table.date_end IS NULL)');}$this->getSelect()->group('main_table.customer_id');return $this;}public function joinValidPointsOrder($customer_id, $store_id, $order_states, $spent = false){if($spent){$cols['points_spent'] = 'SUM(main_table.points_spent) as nb_credit';}else{$cols['points_current'] = 'SUM(main_table.points_current) as nb_credit'; $cols['points_spent'] = 'SUM(main_table.points_spent)';}$this->getSelect()->from($this->getResource()->getMainTable().' as child_table',$cols);if(version_compare(Mage::getVersion(), '1.4.0', '>=')){$this->getSelect()->where("( main_table.order_id = '".Arcanumdev_Awardpoints_Model_Stats::TYPE_POINTS_REVIEW."' or main_table.order_id = '".Arcanumdev_Awardpoints_Model_Stats::TYPE_POINTS_ADMIN."' or main_table.order_id = '".Arcanumdev_Awardpoints_Model_Stats::TYPE_POINTS_REGISTRATION."' or main_table.order_id in ( SELECT increment_id FROM ".$this->getTable('sales/order')." AS orders WHERE orders.customer_id = '".$customer_id."' AND orders.state IN (".implode(',',$order_states).")) )");}else{$table_sales_order = $this->getTable('sales/order').'_varchar'; $this->getSelect()->where(" ( main_table.order_id = '".Arcanumdev_Awardpoints_Model_Stats::TYPE_POINTS_REVIEW."' or main_table.order_id = '".Arcanumdev_Awardpoints_Model_Stats::TYPE_POINTS_ADMIN."' or main_table.order_id = '".Arcanumdev_Awardpoints_Model_Stats::TYPE_POINTS_REGISTRATION."' or main_table.order_id in (SELECT increment_id    FROM ".$this->getTable('sales/order')." AS orders    WHERE orders.entity_id IN (    SELECT order_state.entity_id    FROM ".$table_sales_order." AS order_state    WHERE order_state.value <> 'canceled'    AND order_state.value in (".implode(',',$order_states).")) ) ) ");}    $this->getSelect()->where('main_table.customer_id = ?',$customer_id) ->where('main_table.awardpoints_account_id = child_table.awardpoints_account_id');if(Mage::getStoreConfig('awardpoints/default/store_scope', Mage::app()->getStore()->getId()) == 1){$this->getSelect()->where('find_in_set(?, main_table.store_id)',$store_id);}if(Mage::getStoreConfig('awardpoints/default/points_duration',$store_id) && !$spent){$this->getSelect()->where('( main_table.date_end >= NOW() or main_table.date_end IS NULL)');}$this->getSelect()->group('main_table.customer_id');return $this;}}
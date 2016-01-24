package com.org.oztt.contants;

import java.util.ArrayList;
import java.util.List;

import com.org.oztt.base.common.MyMap;

public final class CommonEnum {

    /** 不提供构造函数 */
    private CommonEnum()
    {
    }

    /**
     * 订单处理标志
     */
    public enum HandleFlag implements IEnum {
        /** 未付款 */
        NOT_PAY("未付款", "0"),
        /** 已付款 */
        PAYED("已付款", "1"),
        /** 处理中 */
        IN_HANDLE("处理中", "2"),
        /** 处理完毕 */
        HAS_HANDLED("处理完毕", "3"),
        /** 删除 */
        DELETED("删除", "9");

        /** 值 */
        private String label;

        /** 键 */
        private String code;

        /**
         * 取得枚举区分
         * 
         * @return String
         */
        public String getEnumName() {
            return "HandleFlag";
        }

        /**
         * 构造函数
         * 
         * @param label String
         * @param code String
         */
        private HandleFlag(String label, String code)
        {
            this.label = label;
            this.code = code;
        }

        /**
         * 根据键取得值
         * 
         * @param code String
         * @return String
         */
        public static String getEnumLabel(String code) {
            for (HandleFlag c : HandleFlag.values()) {
                if (c.getCode().equals(code)) {
                    return c.label;
                }
            }
            return null;
        }

        /**
         * 根据值取得第一个匹配的键
         * 
         * @param label String
         * @return String
         */
        public static String getEnumCode(String label) {
            for (HandleFlag c : HandleFlag.values()) {
                if (c.getLabel().equals(label)) {
                    return c.code;
                }
            }
            return null;
        }

        /**
         * 取得下拉框列表
         * 
         * @return List
         */
        public static List<MyMap> getList() {
            List<MyMap> resultList = new ArrayList<MyMap>();
            for (HandleFlag c : HandleFlag.values()) {
                MyMap dto = new MyMap();
                dto.setKey(c.getCode());
                dto.setValue(c.getLabel());
                resultList.add(dto);
            }
            return resultList;
        }

        /**
         * get
         * 
         * @return String
         */
        public String getLabel() {
            return label;
        }

        /**
         * set
         * 
         * @return String
         */
        public String getCode() {
            return code;
        }

        /**
         * String转换，中间加横杠
         * 
         * @return String
         */
        @Override
        public String toString() {
            return this.label;
        }

        /**
         * 转换成value
         * 
         * @return String
         */
        public String toValueString() {
            return String.valueOf(this.code);
        }

        /**
         * 转换成label
         * 
         * @return String
         */
        public String toLabelString() {
            return String.valueOf(this.label);
        }
    }
    
    
    /**
     * 运送方式
     */
    public enum DeliveryMethod implements IEnum {
        /** 来店自提 */
        SELF_PICK("未付款", "1"),
        /** 已付款 */
        NORMAL("普通快递", "2"),
        /** 处理中 */
        COD("货到付款", "3");

        /** 值 */
        private String label;

        /** 键 */
        private String code;

        /**
         * 取得枚举区分
         * 
         * @return String
         */
        public String getEnumName() {
            return "DeliveryMethod";
        }

        /**
         * 构造函数
         * 
         * @param label String
         * @param code String
         */
        private DeliveryMethod(String label, String code)
        {
            this.label = label;
            this.code = code;
        }

        /**
         * 根据键取得值
         * 
         * @param code String
         * @return String
         */
        public static String getEnumLabel(String code) {
            for (DeliveryMethod c : DeliveryMethod.values()) {
                if (c.getCode().equals(code)) {
                    return c.label;
                }
            }
            return null;
        }

        /**
         * 根据值取得第一个匹配的键
         * 
         * @param label String
         * @return String
         */
        public static String getEnumCode(String label) {
            for (DeliveryMethod c : DeliveryMethod.values()) {
                if (c.getLabel().equals(label)) {
                    return c.code;
                }
            }
            return null;
        }

        /**
         * 取得下拉框列表
         * 
         * @return List
         */
        public static List<MyMap> getList() {
            List<MyMap> resultList = new ArrayList<MyMap>();
            for (DeliveryMethod c : DeliveryMethod.values()) {
                MyMap dto = new MyMap();
                dto.setKey(c.getCode());
                dto.setValue(c.getLabel());
                resultList.add(dto);
            }
            return resultList;
        }

        /**
         * get
         * 
         * @return String
         */
        public String getLabel() {
            return label;
        }

        /**
         * set
         * 
         * @return String
         */
        public String getCode() {
            return code;
        }

        /**
         * String转换，中间加横杠
         * 
         * @return String
         */
        @Override
        public String toString() {
            return this.label;
        }

        /**
         * 转换成value
         * 
         * @return String
         */
        public String toValueString() {
            return String.valueOf(this.code);
        }

        /**
         * 转换成label
         * 
         * @return String
         */
        public String toLabelString() {
            return String.valueOf(this.label);
        }
    }

    /**
     * 付款方式
     */
    public enum PaymentMethod implements IEnum {
        /** Credit Card */
        CREDIT_CARD("Credit Card", "1"),
        /** Paypal */
        PAYPAL("Paypal", "2"),
        /** 支付宝 */
        ALIPAY("支付宝", "3"),
        /** 微信支付 */
        WECHAT("微信支付", "4");

        /** 值 */
        private String label;

        /** 键 */
        private String code;

        /**
         * 取得枚举区分
         * 
         * @return String
         */
        public String getEnumName() {
            return "PaymentMethod";
        }

        /**
         * 构造函数
         * 
         * @param label String
         * @param code String
         */
        private PaymentMethod(String label, String code)
        {
            this.label = label;
            this.code = code;
        }

        /**
         * 根据键取得值
         * 
         * @param code String
         * @return String
         */
        public static String getEnumLabel(String code) {
            for (PaymentMethod c : PaymentMethod.values()) {
                if (c.getCode().equals(code)) {
                    return c.label;
                }
            }
            return null;
        }

        /**
         * 根据值取得第一个匹配的键
         * 
         * @param label String
         * @return String
         */
        public static String getEnumCode(String label) {
            for (PaymentMethod c : PaymentMethod.values()) {
                if (c.getLabel().equals(label)) {
                    return c.code;
                }
            }
            return null;
        }

        /**
         * 取得下拉框列表
         * 
         * @return List
         */
        public static List<MyMap> getList() {
            List<MyMap> resultList = new ArrayList<MyMap>();
            for (PaymentMethod c : PaymentMethod.values()) {
                MyMap dto = new MyMap();
                dto.setKey(c.getCode());
                dto.setValue(c.getLabel());
                resultList.add(dto);
            }
            return resultList;
        }

        /**
         * get
         * 
         * @return String
         */
        public String getLabel() {
            return label;
        }

        /**
         * set
         * 
         * @return String
         */
        public String getCode() {
            return code;
        }

        /**
         * String转换，中间加横杠
         * 
         * @return String
         */
        @Override
        public String toString() {
            return this.label;
        }

        /**
         * 转换成value
         * 
         * @return String
         */
        public String toValueString() {
            return String.valueOf(this.code);
        }

        /**
         * 转换成label
         * 
         * @return String
         */
        public String toLabelString() {
            return String.valueOf(this.label);
        }
    }

}

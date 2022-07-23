package subject.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MY_FAVORITE")
public class MyFavorite {
	@Id
	@Column(name = "MY_FAVORITE_NUMBER")
	private Integer myfavoritenumber;
	@Column(name = "ITEM_SERIAL_NUMBER")
	private Integer itemserialnumber;
	@Column(name = "MEMBER_SERIAL_NUMBER")
	private Integer memberserialnumber;

	@Override
	public String toString() {
		return "MyFavorite [myfavoritenumber=" + myfavoritenumber + ", itemserialnumber=" + itemserialnumber
				+ ", memberserialnumber=" + memberserialnumber + "]";
	}

	public MyFavorite() {
	}

	public Integer getMyfavoritenumber() {
		return myfavoritenumber;
	}

	public void setMyfavoritenumber(Integer myfavoritenumber) {
		this.myfavoritenumber = myfavoritenumber;
	}

	public Integer getItemserialnumber() {
		return itemserialnumber;
	}

	public void setItemserialnumber(Integer itemserialnumber) {
		this.itemserialnumber = itemserialnumber;
	}

	public Integer getMemberserialnumber() {
		return memberserialnumber;
	}

	public void setMemberserialnumber(Integer memberserialnumber) {
		this.memberserialnumber = memberserialnumber;
	}

}

.class public Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;
.super Ljava/lang/Object;
.source "CanTypeAllEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baud_rate:I

.field private can_different_id:I

.field private can_type_id:I

.field private car_category:Ljava/lang/String;

.field private car_model:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private each_can_id:I

.field private is_app_handle_key:I

.field private is_show_app:I

.field private is_use_new_app:I

.field private is_use_new_camera:I

.field private pack_type:I

.field private protocol_company:Ljava/lang/String;

.field private selected:Z

.field private years:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->protocol_company:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_category:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_model:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->years:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_type_id:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_different_id:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->each_can_id:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->baud_rate:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_app_handle_key:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->pack_type:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_show_app:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_camera:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_app:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaud_rate()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->baud_rate:I

    return v0
.end method

.method public getCan_different_id()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_different_id:I

    return v0
.end method

.method public getCan_type_id()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_type_id:I

    return v0
.end method

.method public getCar_category()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_category:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_model()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_model:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEach_can_id()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->each_can_id:I

    return v0
.end method

.method public getIs_app_handle_key()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_app_handle_key:I

    return v0
.end method

.method public getIs_show_app()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_show_app:I

    return v0
.end method

.method public getIs_use_new_app()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_app:I

    return v0
.end method

.method public getIs_use_new_camera()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_camera:I

    return v0
.end method

.method public getPack_type()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->pack_type:I

    return v0
.end method

.method public getProtocol_company()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->protocol_company:Ljava/lang/String;

    return-object v0
.end method

.method public getYears()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->years:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->selected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->protocol_company:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_category:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_model:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->years:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_type_id:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_different_id:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->each_can_id:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->baud_rate:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_app_handle_key:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->pack_type:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_show_app:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_camera:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_app:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setBaud_rate(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->baud_rate:I

    return-void
.end method

.method public setCan_different_id(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_different_id:I

    return-void
.end method

.method public setCan_type_id(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_type_id:I

    return-void
.end method

.method public setCar_category(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_category:Ljava/lang/String;

    return-void
.end method

.method public setCar_model(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_model:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setEach_can_id(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->each_can_id:I

    return-void
.end method

.method public setIs_app_handle_key(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_app_handle_key:I

    return-void
.end method

.method public setIs_show_app(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_show_app:I

    return-void
.end method

.method public setIs_use_new_app(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_app:I

    return-void
.end method

.method public setIs_use_new_camera(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_camera:I

    return-void
.end method

.method public setPack_type(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->pack_type:I

    return-void
.end method

.method public setProtocol_company(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->protocol_company:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->selected:Z

    return-void
.end method

.method public setYears(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->years:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 188
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->protocol_company:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->car_model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->years:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_type_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->can_different_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->each_can_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->baud_rate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_app_handle_key:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->pack_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_show_app:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_camera:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->is_use_new_app:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

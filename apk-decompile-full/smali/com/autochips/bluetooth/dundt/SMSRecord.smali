.class public Lcom/autochips/bluetooth/dundt/SMSRecord;
.super Ljava/lang/Object;
.source "SMSRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autochips/bluetooth/dundt/SMSRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Sms_Body:Ljava/lang/String;

.field private Sms_Index:I

.field private Sms_PhoneNum:Ljava/lang/String;

.field private Sms_Status:I

.field private Sms_Time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/autochips/bluetooth/dundt/SMSRecord$1;

    invoke-direct {v0}, Lcom/autochips/bluetooth/dundt/SMSRecord$1;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/dundt/SMSRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_PhoneNum:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Index:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Status:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Body:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_PhoneNum:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Index:I

    .line 68
    iput p4, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Status:I

    .line 69
    iput-object p5, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Body:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Body:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Index:I

    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_PhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Status:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Body:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Index:I

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_PhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Time:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSRecord [Sms_PhoneNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_PhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Sms_Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Sms_Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Sms_Body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Sms_Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 125
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_PhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget p2, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget p2, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SMSRecord;->Sms_Time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

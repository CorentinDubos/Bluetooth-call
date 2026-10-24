.class public Lcom/autochips/bluetooth/PbSyncManager/PBRecord;
.super Ljava/lang/Object;
.source "PBRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calltime:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord$1;

    invoke-direct {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord$1;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->type:I

    .line 25
    iput-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->number:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->calltime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->type:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->number:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->calltime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalltime()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->calltime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->type:I

    return v0
.end method

.method public setCalltime(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->calltime:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->number:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBRecord [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",calltime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->calltime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 114
    iget p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->calltime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

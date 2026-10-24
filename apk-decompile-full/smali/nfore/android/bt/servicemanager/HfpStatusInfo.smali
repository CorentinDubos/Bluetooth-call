.class public Lnfore/android/bt/servicemanager/HfpStatusInfo;
.super Ljava/lang/Object;
.source "HfpStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnfore/android/bt/servicemanager/HfpStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private battchgState:I

.field private callState:I

.field private callbackState:I

.field private callheldState:I

.field private callsetupState:I

.field private deviceAddress:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private mainState:I

.field private roamState:I

.field private scoState:I

.field private serviceState:I

.field private signalState:I

.field private singleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Lnfore/android/bt/servicemanager/HfpStatusInfo$1;

    invoke-direct {v0}, Lnfore/android/bt/servicemanager/HfpStatusInfo$1;-><init>()V

    sput-object v0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpStatusInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBattchgState()I
    .locals 1

    .line 238
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->battchgState:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .line 141
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callState:I

    return v0
.end method

.method public getCallbackState()I
    .locals 1

    .line 256
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callbackState:I

    return v0
.end method

.method public getCallheldState()I
    .locals 1

    .line 184
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callheldState:I

    return v0
.end method

.method public getCallsetupState()I
    .locals 1

    .line 162
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callsetupState:I

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMainState()I
    .locals 1

    .line 91
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->mainState:I

    return v0
.end method

.method public getRoamState()I
    .locals 1

    .line 221
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->roamState:I

    return v0
.end method

.method public getScoState()I
    .locals 1

    .line 105
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->scoState:I

    return v0
.end method

.method public getServiceState()I
    .locals 1

    .line 122
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->serviceState:I

    return v0
.end method

.method public getSignalState()I
    .locals 1

    .line 203
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->signalState:I

    return v0
.end method

.method public getSingleType()I
    .locals 1

    .line 278
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->singleType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceAddress:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->mainState:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->scoState:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->serviceState:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callState:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callsetupState:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callheldState:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->signalState:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->roamState:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->battchgState:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callbackState:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->singleType:I

    return-void
.end method

.method public setBattchgState(I)V
    .locals 0

    .line 246
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->battchgState:I

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    .line 151
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callState:I

    return-void
.end method

.method public setCallbackState(I)V
    .locals 0

    .line 266
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callbackState:I

    return-void
.end method

.method public setCallheldState(I)V
    .locals 0

    .line 194
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callheldState:I

    return-void
.end method

.method public setCallsetupState(I)V
    .locals 0

    .line 174
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callsetupState:I

    return-void
.end method

.method public setDeviceAddress(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setMainState(I)V
    .locals 0

    .line 98
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->mainState:I

    return-void
.end method

.method public setRoamState(I)V
    .locals 0

    .line 230
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->roamState:I

    return-void
.end method

.method public setScoState(I)V
    .locals 0

    .line 112
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->scoState:I

    return-void
.end method

.method public setServiceState(I)V
    .locals 0

    .line 131
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->serviceState:I

    return-void
.end method

.method public setSignalState(I)V
    .locals 0

    .line 212
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->signalState:I

    return-void
.end method

.method public setSingleType(I)V
    .locals 0

    .line 290
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->singleType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 297
    iget-object p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->mainState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->scoState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->serviceState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callsetupState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callheldState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->signalState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->roamState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->battchgState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->callbackState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpStatusInfo;->singleType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;
.super Ljava/lang/Object;
.source "HfpPhoneNumberInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dir:I

.field private idx:I

.field private mode:I

.field private mpty:I

.field private number:Ljava/lang/String;

.field private status:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo$1;

    invoke-direct {v0}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo$1;-><init>()V

    sput-object v0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->clone()Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;
    .locals 2

    .line 179
    new-instance v0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;

    invoke-direct {v0}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;-><init>()V

    .line 180
    iget v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->idx:I

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setIdx(I)V

    .line 181
    iget v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->dir:I

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setDir(I)V

    .line 182
    iget v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->status:I

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setStatus(I)V

    .line 183
    iget v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mode:I

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setMode(I)V

    .line 184
    iget v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mpty:I

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setMpty(I)V

    .line 185
    iget v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->type:I

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setType(I)V

    .line 186
    iget-object v1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->setNumber(Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDir()I
    .locals 1

    .line 58
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->dir:I

    return v0
.end method

.method public getIdx()I
    .locals 1

    .line 44
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->idx:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 101
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mode:I

    return v0
.end method

.method public getMpty()I
    .locals 1

    .line 120
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mpty:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 78
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->status:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 138
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->idx:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->dir:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->status:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mode:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mpty:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->type:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->number:Ljava/lang/String;

    return-void
.end method

.method public setDir(I)V
    .locals 0

    .line 65
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->dir:I

    return-void
.end method

.method public setIdx(I)V
    .locals 0

    .line 51
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->idx:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 111
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mode:I

    return-void
.end method

.method public setMpty(I)V
    .locals 0

    .line 129
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mpty:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->number:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 91
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->status:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 147
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 168
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->idx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->dir:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->mpty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object p2, p0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

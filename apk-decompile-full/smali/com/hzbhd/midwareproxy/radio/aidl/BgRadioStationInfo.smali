.class public Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;
.super Ljava/lang/Object;
.source "BgRadioStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFreq:I

.field public mPsname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mFreq:I

    .line 14
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mPsname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setmFreq(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mFreq:I

    return-void
.end method

.method public setmPsname(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mPsname:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mPsname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mPsname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    iget p2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/BgRadioStationInfo;->mPsname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

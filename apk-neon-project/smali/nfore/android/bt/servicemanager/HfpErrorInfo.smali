.class public Lnfore/android/bt/servicemanager/HfpErrorInfo;
.super Ljava/lang/Object;
.source "HfpErrorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnfore/android/bt/servicemanager/HfpErrorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:I

.field private errorDesc:Ljava/lang/String;

.field private errorResponse:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lnfore/android/bt/servicemanager/HfpErrorInfo$1;

    invoke-direct {v0}, Lnfore/android/bt/servicemanager/HfpErrorInfo$1;-><init>()V

    sput-object v0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpErrorInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 33
    iget v0, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorCode:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorResponse()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorResponse:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorCode:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorResponse:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorDesc:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorCode:I

    return-void
.end method

.method public setErrorDesc(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorDesc:Ljava/lang/String;

    return-void
.end method

.method public setErrorResponse(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorResponse:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 76
    iget p2, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object p2, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorResponse:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lnfore/android/bt/servicemanager/HfpErrorInfo;->errorDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

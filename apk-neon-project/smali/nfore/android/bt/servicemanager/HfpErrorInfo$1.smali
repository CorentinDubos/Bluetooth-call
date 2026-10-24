.class Lnfore/android/bt/servicemanager/HfpErrorInfo$1;
.super Ljava/lang/Object;
.source "HfpErrorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/HfpErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnfore/android/bt/servicemanager/HfpErrorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpErrorInfo$1;->createFromParcel(Landroid/os/Parcel;)Lnfore/android/bt/servicemanager/HfpErrorInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnfore/android/bt/servicemanager/HfpErrorInfo;
    .locals 1

    .line 86
    new-instance v0, Lnfore/android/bt/servicemanager/HfpErrorInfo;

    invoke-direct {v0, p1}, Lnfore/android/bt/servicemanager/HfpErrorInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpErrorInfo$1;->newArray(I)[Lnfore/android/bt/servicemanager/HfpErrorInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnfore/android/bt/servicemanager/HfpErrorInfo;
    .locals 0

    .line 89
    new-array p1, p1, [Lnfore/android/bt/servicemanager/HfpErrorInfo;

    return-object p1
.end method

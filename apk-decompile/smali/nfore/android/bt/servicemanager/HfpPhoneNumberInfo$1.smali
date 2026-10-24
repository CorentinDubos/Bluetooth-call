.class Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo$1;
.super Ljava/lang/Object;
.source "HfpPhoneNumberInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo$1;->createFromParcel(Landroid/os/Parcel;)Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;
    .locals 1

    .line 194
    new-instance v0, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;

    invoke-direct {v0, p1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo$1;->newArray(I)[Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;
    .locals 0

    .line 197
    new-array p1, p1, [Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;

    return-object p1
.end method

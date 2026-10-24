.class Lcom/hzbhd/mediaScanner/MediaObjectName$1;
.super Ljava/lang/Object;
.source "MediaObjectName.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/MediaObjectName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hzbhd/mediaScanner/MediaObjectName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/mediaScanner/MediaObjectName;
    .locals 1

    .line 40
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaObjectName;

    invoke-direct {v0, p1}, Lcom/hzbhd/mediaScanner/MediaObjectName;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/hzbhd/mediaScanner/MediaObjectName$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/mediaScanner/MediaObjectName;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hzbhd/mediaScanner/MediaObjectName;
    .locals 0

    .line 46
    new-array p1, p1, [Lcom/hzbhd/mediaScanner/MediaObjectName;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/hzbhd/mediaScanner/MediaObjectName$1;->newArray(I)[Lcom/hzbhd/mediaScanner/MediaObjectName;

    move-result-object p1

    return-object p1
.end method

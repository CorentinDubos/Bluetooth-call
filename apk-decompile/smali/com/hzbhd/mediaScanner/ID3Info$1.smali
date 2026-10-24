.class Lcom/hzbhd/mediaScanner/ID3Info$1;
.super Ljava/lang/Object;
.source "ID3Info.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/ID3Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hzbhd/mediaScanner/ID3Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/mediaScanner/ID3Info;
    .locals 1

    .line 69
    new-instance v0, Lcom/hzbhd/mediaScanner/ID3Info;

    invoke-direct {v0, p1}, Lcom/hzbhd/mediaScanner/ID3Info;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/hzbhd/mediaScanner/ID3Info$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/mediaScanner/ID3Info;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hzbhd/mediaScanner/ID3Info;
    .locals 0

    .line 75
    new-array p1, p1, [Lcom/hzbhd/mediaScanner/ID3Info;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/hzbhd/mediaScanner/ID3Info$1;->newArray(I)[Lcom/hzbhd/mediaScanner/ID3Info;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/autochips/bluetooth/dundt/SMSRecord$1;
.super Ljava/lang/Object;
.source "SMSRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/SMSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/autochips/bluetooth/dundt/SMSRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autochips/bluetooth/dundt/SMSRecord;
    .locals 1

    .line 136
    new-instance v0, Lcom/autochips/bluetooth/dundt/SMSRecord;

    invoke-direct {v0, p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/dundt/SMSRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/autochips/bluetooth/dundt/SMSRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/autochips/bluetooth/dundt/SMSRecord;
    .locals 0

    .line 141
    new-array p1, p1, [Lcom/autochips/bluetooth/dundt/SMSRecord;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/dundt/SMSRecord$1;->newArray(I)[Lcom/autochips/bluetooth/dundt/SMSRecord;

    move-result-object p1

    return-object p1
.end method

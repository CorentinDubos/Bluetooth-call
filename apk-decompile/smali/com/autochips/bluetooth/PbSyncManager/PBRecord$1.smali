.class final Lcom/autochips/bluetooth/PbSyncManager/PBRecord$1;
.super Ljava/lang/Object;
.source "PBRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autochips/bluetooth/PbSyncManager/PBRecord;
    .locals 1

    .line 124
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/autochips/bluetooth/PbSyncManager/PBRecord;
    .locals 0

    .line 129
    new-array p1, p1, [Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord$1;->newArray(I)[Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    move-result-object p1

    return-object p1
.end method

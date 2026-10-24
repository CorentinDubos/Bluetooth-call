.class public Lcom/hzbhd/bluetooth/constants/BluetoothConstants$FavoriteQuery;
.super Ljava/lang/Object;
.source "BluetoothConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/constants/BluetoothConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteQuery"
.end annotation


# static fields
.field public static final FAVORITES_CONTACT_ID:I = 0x5

.field public static final FAVORITES_FAVORITE:I = 0x4

.field public static final FAVORITES_ID:I = 0x0

.field public static final FAVORITES_NAME:I = 0x1

.field public static final FAVORITES_NUMBER:I = 0x2

.field public static final FAVORITES_STARRED:I = 0x3

.field public static final FAVORITE_PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "number"

    const-string/jumbo v3, "starred"

    const-string v4, "favorite_type"

    const-string v5, "contact_id"

    .line 67
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants$FavoriteQuery;->FAVORITE_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

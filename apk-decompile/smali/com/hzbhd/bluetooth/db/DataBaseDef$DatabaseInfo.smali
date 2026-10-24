.class public Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;
.super Ljava/lang/Object;
.source "DataBaseDef.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/db/DataBaseDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseInfo"
.end annotation


# static fields
.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DATA4:Ljava/lang/String; = "data4"

.field public static final DATA5:Ljava/lang/String; = "data5"

.field public static final DEVICE_ADDR:Ljava/lang/String; = "device_addr"

.field public static final DEVICE_CONTENT_TYPE:Ljava/lang/String; = "vnd.Android.cursor.dir/vnd.btcontentprovider.device"

.field public static final DEVICE_CONTENT_TYPE_ITEM:Ljava/lang/String; = "vnd.Android.cursor.item/vnd.btcontentprovider.device"

.field public static final DEVICE_CONTENT_URI:Landroid/net/Uri;

.field public static final DEVICE_CREATED:Ljava/lang/String; = "create_date"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final DEVICE_PHOTO:Ljava/lang/String; = "device_photo"

.field public static final DEVICE_PROFILE:Ljava/lang/String; = "device_profile"

.field public static final FAVORITES_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final FAVORITES_CONTENT_TYPE:Ljava/lang/String; = "vnd.Android.cursor.dir/vnd.btcontentprovider.favorite"

.field public static final FAVORITES_CONTENT_TYPE_ITEM:Ljava/lang/String; = "vnd.Android.cursor.item/vnd.btdabcontentprovider.favorite"

.field public static final FAVORITES_CONTENT_URI:Landroid/net/Uri;

.field public static final FAVORITES_FAVORITE_TYPE:Ljava/lang/String; = "favorite_type"

.field public static final FAVORITES_NAME:Ljava/lang/String; = "name"

.field public static final FAVORITES_NUMBER:Ljava/lang/String; = "number"

.field public static final FAVORITES_STARRED:Ljava/lang/String; = "starred"

.field public static final SOS_CONTENT_TYPE:Ljava/lang/String; = "vnd.Android.cursor.dir/vnd.btcontentprovider.sospeople"

.field public static final SOS_CONTENT_TYPE_ITEM:Ljava/lang/String; = "vnd.Android.cursor.item/vnd.btdabcontentprovider.sospeople"

.field public static final SOS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.hzbhd.bluetooth.BtContentProvider/devices"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;->DEVICE_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.hzbhd.bluetooth.BtContentProvider/favorites"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;->FAVORITES_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.hzbhd.bluetooth.BtContentProvider/sospeoples"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;->SOS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

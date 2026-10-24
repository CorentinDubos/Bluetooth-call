.class public Lcom/hzbhd/bluetooth/db/DataBaseDef;
.super Ljava/lang/Object;
.source "DataBaseDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;
    }
.end annotation


# static fields
.field public static final AUTHORIY:Ljava/lang/String; = "com.hzbhd.bluetooth.BtContentProvider"

.field public static final CONTACT_TYPE_DEFAULT:I = 0x0

.field public static final CONTACT_TYPE_FAVORITE:I = 0x1

.field public static final CONTACT_TYPE_SOS:I = 0x2

.field public static final CREATE_TABLE_DEVICE:Ljava/lang/String; = "CREATE TABLE devices (_id INTEGER PRIMARY KEY autoincrement,device_name TEXT,device_addr TEXT,create_date TEXT,device_profile INTEGER,device_photo BLOB,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT)"

.field public static final CREATE_TABLE_FAVORITES:Ljava/lang/String; = "CREATE TABLE favorites (_id INTEGER PRIMARY KEY autoincrement,name TEXT,starred INTEGER,favorite_type INTEGER,number TEXT,contact_id INTEGER,device_addr TEXT,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT)"

.field public static final CREATE_TABLE_SOS:Ljava/lang/String; = "CREATE TABLE sospeoples (_id INTEGER PRIMARY KEY autoincrement,name TEXT,number TEXT,starred INTEGER,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT)"

.field public static final DATABASE_NAME:Ljava/lang/String; = "bt.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME_DEVICES:Ljava/lang/String; = "devices"

.field public static final TABLE_NAME_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TABLE_NAME_SOS:Ljava/lang/String; = "sospeoples"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

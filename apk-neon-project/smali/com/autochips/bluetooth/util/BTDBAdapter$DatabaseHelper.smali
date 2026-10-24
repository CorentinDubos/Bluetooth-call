.class Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BTDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/BTDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, v0, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTDBAdapter"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "create table PBAPTABLE (_id integer primary key,phonebooktype integer,personname Text,phonenumber Text,calltime Text,ordernum integer)"

    .line 98
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table SMSTABLE (_id integer primary key,smstype integer,phoneno Text,sctime Text,smsbody Text,smsindex integer)"

    .line 99
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 103
    sget-boolean p2, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz p2, :cond_0

    const-string p2, "BTDBAdapter"

    const-string p3, "onUpgrade()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "DROP TABLE IF EXISTS PBAPTABLE"

    .line 104
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS SMSTABLE"

    .line 105
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

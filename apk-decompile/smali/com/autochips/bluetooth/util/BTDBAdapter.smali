.class public Lcom/autochips/bluetooth/util/BTDBAdapter;
.super Ljava/lang/Object;
.source "BTDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "BTDATABASE"

.field private static final DATABASE_PATH:Ljava/lang/String; = "/data4write/bluetooth/"

.field private static final DATABASE_VERSION:I = 0x1

.field public static DBG:Z = false

.field public static final KEY_CALLTIME:Ljava/lang/String; = "calltime"

.field public static final KEY_INDEX:Ljava/lang/String; = "smsindex"

.field public static final KEY_MESSAGECOUNT:Ljava/lang/String; = "messagecount"

.field public static final KEY_ORDER:Ljava/lang/String; = "ordernum"

.field public static final KEY_PERSONNAME:Ljava/lang/String; = "personname"

.field public static final KEY_PHONENO:Ljava/lang/String; = "phoneno"

.field public static final KEY_PHONENUMBER:Ljava/lang/String; = "phonenumber"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_SCTIME:Ljava/lang/String; = "sctime"

.field public static final KEY_SMSBody:Ljava/lang/String; = "smsbody"

.field public static final KEY_SMSROWID:Ljava/lang/String; = "_id"

.field public static final KEY_SMSTYPE:Ljava/lang/String; = "smstype"

.field public static final KEY_TYPE:Ljava/lang/String; = "phonebooktype"

.field private static final PBAP_DB_CREATE:Ljava/lang/String; = "create table PBAPTABLE (_id integer primary key,phonebooktype integer,personname Text,phonenumber Text,calltime Text,ordernum integer)"

.field private static final SMSTABLE_NAME:Ljava/lang/String; = "SMSTABLE"

.field private static final SMS_DB_CREATE:Ljava/lang/String; = "create table SMSTABLE (_id integer primary key,smstype integer,phoneno Text,sctime Text,smsbody Text,smsindex integer)"

.field private static final TABLE_NAME:Ljava/lang/String; = "PBAPTABLE"

.field public static final TAG:Ljava/lang/String; = "BTDBAdapter"

.field private static mOpened:Z

.field private static final m_Instance:Lcom/autochips/bluetooth/util/BTDBAdapter;


# instance fields
.field private DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    .line 69
    new-instance v0, Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->m_Instance:Lcom/autochips/bluetooth/util/BTDBAdapter;

    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->mOpened:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/util/BTDBAdapter;
    .locals 1

    .line 79
    sget-object v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->m_Instance:Lcom/autochips/bluetooth/util/BTDBAdapter;

    return-object v0
.end method


# virtual methods
.method public SearchPhonebookByString(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 258
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string/jumbo p1, "select personname,phonenumber from PBAPTABLE where (phonebooktype=? or phonebooktype=?) and (personname like ? or phonenumber like ?)"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 273
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 274
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :cond_0
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>()V

    const-string v1, "personname"

    .line 278
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setName(Ljava/lang/String;)V

    const-string v1, "phonenumber"

    .line 279
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setNumber(Ljava/lang/String;)V

    .line 281
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "records.size()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BTDBAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method

.method public close()V
    .locals 2

    .line 127
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTDBAdapter"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->mOpened:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->close()V

    const/4 v0, 0x0

    .line 130
    sput-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->mOpened:Z

    :cond_1
    return-void
.end method

.method public delete(I)V
    .locals 3

    .line 368
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDBAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "delete from PBAPTABLE where phonebooktype=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteOneSms(I)V
    .locals 3

    .line 377
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOneSms("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDBAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string p1, "delete from SMSTABLE"

    .line 380
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "delete from SMSTABLE where smstype=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public flushPhonebookTable()V
    .locals 4

    const-string v0, "DETACH DATABASE dbObj"

    .line 427
    sget-boolean v1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    const-string v2, "BTDBAdapter"

    if-eqz v1, :cond_0

    const-string v1, "flushPhonebookTable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "/data4write/bluetooth/BTDATABASE.db"

    .line 431
    invoke-static {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "DROP TABLE IF EXISTS PBAPTABLE"

    .line 432
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "create table PBAPTABLE (_id integer primary key,phonebooktype integer,personname Text,phonenumber Text,calltime Text,ordernum integer)"

    .line 433
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ATTACH DATABASE \'/data4write/bluetooth/BTDATABASE.db\' as dbObj"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO dbObj.PBAPTABLE SELECT * FROM PBAPTABLE"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :try_start_3
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    .line 446
    :catch_2
    :try_start_4
    sget-boolean v1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "flushPhonebookTable, exception2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 449
    :cond_1
    :try_start_5
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    return-void

    :catchall_0
    :try_start_6
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 435
    :catch_5
    :try_start_7
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "flushPhonebookTable, exception1"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 439
    :cond_2
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    return-void

    :goto_0
    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_7

    .line 440
    :catch_7
    throw v0
.end method

.method public getCount(I)I
    .locals 3

    .line 335
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTDBAdapter"

    const-string v1, "getCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "select count(*) from PBAPTABLE where phonebooktype=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 341
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public getNamebyTel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "select personname from PBAPTABLE where (phonebooktype=16 or phonebooktype=32) and phonenumber=?"

    .line 393
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 398
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "personname"

    .line 402
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getPbRecords(III)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;"
        }
    .end annotation

    .line 229
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    const-string v1, "BTDBAdapter"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPbRecords("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v2, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, p2

    const-string/jumbo p2, "select personname,phonenumber,calltime from PBAPTABLE where phonebooktype=? order by ordernum asc limit ?,?"

    invoke-virtual {v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 237
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_2

    .line 238
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    :cond_1
    new-instance p3, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {p3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>()V

    .line 241
    invoke-virtual {p3, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    const-string v2, "personname"

    .line 242
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setName(Ljava/lang/String;)V

    const-string v2, "phonenumber"

    .line 243
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setNumber(Ljava/lang/String;)V

    const-string v2, "calltime"

    .line 244
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setCalltime(Ljava/lang/String;)V

    .line 245
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_1

    .line 248
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_3
    sget-boolean p1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "records.size()="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public getSmsNo(I)I
    .locals 3

    .line 349
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsNo(),type is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDBAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    const-string/jumbo v1, "select count(*) from SMSTABLE"

    .line 353
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 355
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string/jumbo p1, "select count(*) from SMSTABLE where smstype=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 358
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 359
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 360
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public getSmsRecords(III)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/dundt/SMSRecord;",
            ">;"
        }
    .end annotation

    .line 293
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    const-string v1, "BTDBAdapter"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsRecords("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Sql string is:"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    const-string/jumbo v7, "select smstype,smsbody,phoneno,sctime from SMSTABLE order by sctime desc limit ?,?"

    .line 301
    sget-boolean v8, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v2, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "select smsbody,phoneno,sctime from SMSTABLE where smstype=? order by sctime desc limit ?,?"

    .line 306
    sget-boolean v8, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v3

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_7

    .line 310
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_6

    .line 311
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    :cond_4
    new-instance p3, Lcom/autochips/bluetooth/dundt/SMSRecord;

    invoke-direct {p3}, Lcom/autochips/bluetooth/dundt/SMSRecord;-><init>()V

    if-ne p1, v6, :cond_5

    const-string/jumbo v2, "smstype"

    .line 315
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setType(I)V

    goto :goto_1

    .line 317
    :cond_5
    invoke-virtual {p3, p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setType(I)V

    :goto_1
    const-string v2, "phoneno"

    .line 319
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setPhoneNum(Ljava/lang/String;)V

    const-string/jumbo v2, "sctime"

    .line 320
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setTime(Ljava/lang/String;)V

    const-string/jumbo v2, "smsbody"

    .line 321
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setBody(Ljava/lang/String;)V

    .line 322
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_4

    .line 325
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_7
    sget-boolean p1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "records.size()="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v0
.end method

.method public insertOneRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 2

    .line 138
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTDBAdapter"

    const-string v1, "insertOneRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "\\D+"

    const-string v1, ""

    .line 139
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 140
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "phonebooktype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "personname"

    .line 157
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phonenumber"

    .line 158
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "calltime"

    .line 159
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "ordernum"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    iget-object p1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p2, 0x0

    const-string p3, "PBAPTABLE"

    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J
    .locals 4

    .line 168
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTDBAdapter"

    const-string v1, "insertOneRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\D+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "phonebooktype"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "personname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "phonenumber"

    .line 189
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->getCalltime()Ljava/lang/String;

    move-result-object p1

    const-string v0, "calltime"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "ordernum"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    iget-object p1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p2, 0x0

    const-string v0, "PBAPTABLE"

    invoke-virtual {p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertOneSmsRecord(Lcom/autochips/bluetooth/dundt/SMSRecord;)J
    .locals 5

    .line 199
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    const-string v1, "BTDBAdapter"

    if-eqz v0, :cond_0

    const-string v0, "insertOneSmsRecord()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "select * from SMSTABLE where smsindex=? and smsbody=?"

    .line 204
    sget-boolean v2, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sql string is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getBody()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 208
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 211
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 214
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 215
    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "smstype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneno"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sctime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smsbody"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "smsindex"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    iget-object p1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "SMSTABLE"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadPhonebookTable()V
    .locals 4

    const-string v0, "DETACH DATABASE dbObj"

    .line 456
    sget-boolean v1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    const-string v2, "BTDBAdapter"

    if-eqz v1, :cond_0

    const-string v1, "loadPhonebookTable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    const-string v3, "DROP TABLE IF EXISTS PBAPTABLE"

    .line 459
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "create table PBAPTABLE (_id integer primary key,phonebooktype integer,personname Text,phonenumber Text,calltime Text,ordernum integer)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ATTACH DATABASE \'/data4write/bluetooth/BTDATABASE.db\' as dbObj"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO PBAPTABLE SELECT * FROM dbObj.PBAPTABLE"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :try_start_1
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 464
    :catch_1
    :try_start_2
    sget-boolean v1, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "loadPhonebookTable, exception"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void

    :catchall_0
    :try_start_4
    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return-void
.end method

.method public open()Lcom/autochips/bluetooth/util/BTDBAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 114
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open() mOpened = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/autochips/bluetooth/util/BTDBAdapter;->mOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDBAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->mOpened:Z

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    const/4 v0, 0x1

    .line 118
    sput-boolean v0, Lcom/autochips/bluetooth/util/BTDBAdapter;->mOpened:Z

    :cond_1
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public updateOrderNumber(I)V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "update PBAPTABLE set ordernum=ordernum+1 where phonebooktype=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateType(I)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->DBHelper:Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/BTDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "update SMSTABLE set smsindex=smsindex+1 where smstype=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

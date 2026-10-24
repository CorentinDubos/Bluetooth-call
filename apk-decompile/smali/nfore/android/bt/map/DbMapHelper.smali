.class public Lnfore/android/bt/map/DbMapHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbMapHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "db_map"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "MessageContent"


# instance fields
.field private final SQL_DELETE_All_MESSAGE:Ljava/lang/String;

.field private final SQL_DELETE_FOLDER:Ljava/lang/String;

.field private final SQL_DELETE_MESSAGE:Ljava/lang/String;

.field private final SQL_DELETE_MESSAGE_BY_FOLDER:Ljava/lang/String;

.field private final SQL_DELETE_ONE_MESSAGE:Ljava/lang/String;

.field private final SQL_MESSAGE:Ljava/lang/String;

.field private final SQL_SELECT_MESSAGE:Ljava/lang/String;

.field private final SQL_SELECT_MESSGE_BY_FOLDER_AND_HANDLE:Ljava/lang/String;

.field private final SQL_SELECT_ONE_MESSAGE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private datetime:Ljava/lang/String;

.field private folder:Ljava/lang/String;

.field private handle:Ljava/lang/String;

.field private helper:Ljava/lang/Object;

.field private m_context:Landroid/content/Context;

.field private macAddress:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private read:Ljava/lang/String;

.field private recipient_addressing:Ljava/lang/String;

.field private sender_addressing:Ljava/lang/String;

.field private sender_name:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "db_map"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 42
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "DbMapHelper"

    .line 20
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    const-string v0, "_id"

    .line 27
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->_id:Ljava/lang/String;

    const-string v0, "handle"

    .line 28
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->handle:Ljava/lang/String;

    const-string/jumbo v0, "subject"

    .line 29
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->subject:Ljava/lang/String;

    const-string v0, "message"

    .line 30
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->message:Ljava/lang/String;

    const-string v0, "datetime"

    .line 31
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->datetime:Ljava/lang/String;

    const-string/jumbo v0, "sender_name"

    .line 32
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->sender_name:Ljava/lang/String;

    const-string/jumbo v0, "sender_addressing"

    .line 33
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->sender_addressing:Ljava/lang/String;

    const-string v0, "recipient_addressing"

    .line 34
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->recipient_addressing:Ljava/lang/String;

    const-string/jumbo v0, "size"

    .line 35
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->size:Ljava/lang/String;

    const-string v0, "read"

    .line 36
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->read:Ljava/lang/String;

    const-string v0, "macAddress"

    .line 37
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->macAddress:Ljava/lang/String;

    const-string v0, "folder"

    .line 38
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->folder:Ljava/lang/String;

    const-string/jumbo v0, "select * from MessageContent where condition = ?"

    .line 247
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_MESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "select * from MessageContent where macAddress = ?"

    .line 249
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_SELECT_MESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "select * from MessageContent where macAddress = ? and handle = ? and folder = ?"

    .line 252
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_SELECT_ONE_MESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "select * from MessageContent where folder = ? and handle = ? and macAddress = ?"

    .line 255
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_SELECT_MESSGE_BY_FOLDER_AND_HANDLE:Ljava/lang/String;

    const-string v0, "delete from MessageContent where macAddress = ?"

    .line 258
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_DELETE_MESSAGE:Ljava/lang/String;

    const-string v0, "delete from MessageContent where macAddress = ? and folder = ?"

    .line 262
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_DELETE_FOLDER:Ljava/lang/String;

    const-string v0, "delete from MessageContent where macAddress = ? and handle = ? and datetime=?"

    .line 265
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_DELETE_ONE_MESSAGE:Ljava/lang/String;

    const-string v0, "delete from MessageContent"

    .line 268
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_DELETE_All_MESSAGE:Ljava/lang/String;

    const-string v0, "delete from MessageContent where folder = ? and handle = ? and macAddress = ?"

    .line 271
    iput-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->SQL_DELETE_MESSAGE_BY_FOLDER:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lnfore/android/bt/map/DbMapHelper;->m_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public deleteAllMessage(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "delete from MessageContent"

    .line 222
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteAllTableContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "MessageContent"

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteMessageByFolderAndHandle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string p2, "delete from MessageContent where folder = ? and handle = ? and macAddress = ?"

    .line 242
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "delete from MessageContent where macAddress = ?"

    .line 227
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteMessageByMacAddressAndFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "delete from MessageContent where macAddress = ? and folder = ?"

    .line 232
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteOneMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "delete from MessageContent where macAddress = ? and handle = ? and datetime=?"

    .line 237
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public insertMessageInfo(Landroid/database/sqlite/SQLiteDatabase;Lnfore/android/bt/map/MsgOutline;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    const-string v1, "insertMessageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 79
    iget-object v1, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertMessageInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getHandle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getFolder()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Folder"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getHandle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Subject"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Message"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getDatetime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Datetime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getSender_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sender_Name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getSender_addressing()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sender_Addressing"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getRecipient_addressing()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recipient_Addressing"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getRead()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Lnfore/android/bt/map/MsgOutline;->getMacAddress()Ljava/lang/String;

    move-result-object p2

    const-string v1, "macAddress"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v1, "MessageContent"

    .line 93
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-void
.end method

.method public isMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 196
    iget-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Piggy Check isMessageInDatabase address : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " folder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inbox"

    .line 198
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sent"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object p1, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    const-string p2, "folder parameter error !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p3, 0x2

    aput-object p4, v0, p3

    const-string/jumbo p3, "select * from MessageContent where macAddress = ? and handle = ? and folder = ?"

    .line 202
    invoke-virtual {p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 203
    iget-object p3, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Piggy Check isMessageInDatabase cursor count : "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p3, "_id"

    .line 205
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "handle"

    .line 206
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "datetime"

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v3, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Piggy Check ID : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " DateTime : "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-ne p3, p2, :cond_1

    return p2

    .line 212
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-le p1, p2, :cond_2

    .line 213
    iget-object p1, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    const-string p3, "Piggy Check have same handle same folder in database. don\'t know why ."

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_2
    return v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS MessageContent ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lnfore/android/bt/map/DbMapHelper;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Integer primary key autoincrement, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lnfore/android/bt/map/DbMapHelper;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(6), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lnfore/android/bt/map/DbMapHelper;->handle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(256), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->datetime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->sender_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->sender_addressing:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->recipient_addressing:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lnfore/android/bt/map/DbMapHelper;->read:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(3), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lnfore/android/bt/map/DbMapHelper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(17)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS config"

    .line 141
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lnfore/android/bt/map/DbMapHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public queryMessage(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "select * from MessageContent where condition = ?"

    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "select * from MessageContent where macAddress = ?"

    .line 177
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryMessageByfolderAndHandle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnfore/android/bt/map/MsgOutline;
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p3, 0x2

    aput-object p4, v1, p3

    const-string/jumbo p4, "select * from MessageContent where folder = ? and handle = ? and macAddress = ?"

    .line 152
    invoke-virtual {p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 154
    new-instance p4, Lnfore/android/bt/map/MsgOutline;

    invoke-direct {p4}, Lnfore/android/bt/map/MsgOutline;-><init>()V

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setFolder(Ljava/lang/String;)V

    .line 159
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setHandle(Ljava/lang/String;)V

    .line 160
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setSubject(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 161
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setMessage(Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 162
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setDatetime(Ljava/lang/String;)V

    const/4 p2, 0x6

    .line 163
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setSender_name(Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 164
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setSender_addressing(Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 165
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setRecipient_addressing(Ljava/lang/String;)V

    const/16 p2, 0x9

    .line 166
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setSize(Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 167
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnfore/android/bt/map/MsgOutline;->setRead(Ljava/lang/String;)V

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p4
.end method

.method public queryMessageInfo(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const-string v2, "MessageContent"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    .line 101
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v2, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Piggy Check rows counts : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    move v2, v0

    :goto_0
    if-lt v2, p2, :cond_0

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_1

    .line 113
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 116
    :goto_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public queryOneMessageByMacAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "inbox"

    .line 185
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sent"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object p1, p0, Lnfore/android/bt/map/DbMapHelper;->TAG:Ljava/lang/String;

    const-string p2, "folder parameter error !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string/jumbo p2, "select * from MessageContent where macAddress = ? and handle = ? and folder = ?"

    .line 189
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

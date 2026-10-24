.class public Lnfore/android/bt/a2dp/DbAvrcpHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbAvrcpHelper.java"


# static fields
.field private static D:Z = true

.field private static final DATABASE_NAME:Ljava/lang/String; = "avrcp.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "nFore_DBAvrcpHelper"


# instance fields
.field public final TABLE_FOLDER_ITEMS:Ljava/lang/String;

.field public final TABLE_MEDIA_ITEMS:Ljava/lang/String;

.field public final TABLE_MEDIA_PLAYER_ITEMS:Ljava/lang/String;

.field public clearFolderItems:Ljava/lang/String;

.field public clearMediaItems:Ljava/lang/String;

.field public clearMediaPlayerItems:Ljava/lang/String;

.field public insertFolderItems:Ljava/lang/String;

.field public insertMediaItems:Ljava/lang/String;

.field public insertMediaPlayerItems:Ljava/lang/String;

.field public selectFolderItems:Ljava/lang/String;

.field public selectMediaItems:Ljava/lang/String;

.field public selectMediaPlayerItems:Ljava/lang/String;

.field public updateMediaItems:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "avrcp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "MediaPlayerItems"

    .line 18
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->TABLE_MEDIA_PLAYER_ITEMS:Ljava/lang/String;

    const-string p1, "FolderItems"

    .line 19
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->TABLE_FOLDER_ITEMS:Ljava/lang/String;

    const-string p1, "MediaItems"

    .line 20
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->TABLE_MEDIA_ITEMS:Ljava/lang/String;

    const-string p1, "delete from MediaPlayerItems;"

    .line 26
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->clearMediaPlayerItems:Ljava/lang/String;

    const-string p1, "delete from FolderItems;"

    .line 27
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->clearFolderItems:Ljava/lang/String;

    const-string p1, "delete from MediaItems where ScopeId = "

    .line 28
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->clearMediaItems:Ljava/lang/String;

    const-string p1, "insert into MediaPlayerItems value(?, ?, ?, ?, ?, ?, ?);"

    .line 34
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->insertMediaPlayerItems:Ljava/lang/String;

    const-string p1, "insert into FolderItems value(?, ?, ?, ?, ?);"

    .line 35
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->insertFolderItems:Ljava/lang/String;

    const-string p1, "insert into MediaItems(UIDcounter, UID, MediaType, Name) value(?, ?, ?, ?);"

    .line 36
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->insertMediaItems:Ljava/lang/String;

    const-string/jumbo p1, "update MediaItems set Title = ? where uid = ?"

    .line 39
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->updateMediaItems:Ljava/lang/String;

    const-string/jumbo p1, "select * from MediaPlayerItems order by MajorPlayerType, Name;"

    .line 42
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->selectMediaPlayerItems:Ljava/lang/String;

    const-string/jumbo p1, "select * from FolderItems order by FolderType, Name;"

    .line 43
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->selectFolderItems:Ljava/lang/String;

    const-string/jumbo p1, "select * from MediaItems where ScopeId = ? order by MediaType, Name;"

    .line 44
    iput-object p1, p0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->selectMediaItems:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 55
    sget-boolean v0, Lnfore/android/bt/a2dp/DbAvrcpHelper;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "nFore_DBAvrcpHelper"

    const-string v1, "+++ Begin of onCreate() +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "create table if not exists MediaPlayerItems( _ID INTEGER primary key autoincrement, UIDcounter smallint, PlayerId smallint, MajorPlayerType blob, PlayerSubType int, PlayStatus blob, FeatureBitMask blob, Name nvarchar(20));"

    .line 63
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists FolderItems(_ID INTEGER primary key autoincrement, UIDcounter smallint, UID bigint, FolderType blob, IsPlayable blob, Name nvarchar(20));"

    .line 64
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists MediaItems(_ID INTEGER primary key autoincrement, ScopeId smallint, UIDcounter smallint, UID bigint, MediaType blob, Name nvarchar(20), Title nvarchar(20), Artist nvarchar(20), Album nvarchar(20), TrackNumber nvarchar(5), TotalTracks nvarchar(6), Genre nvarchar(10), Time_ms nvarchar(10));"

    .line 65
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 70
    sget-boolean p1, Lnfore/android/bt/a2dp/DbAvrcpHelper;->D:Z

    if-eqz p1, :cond_0

    const-string p1, "nFore_DBAvrcpHelper"

    const-string p2, "+++ Begin of onUpgrade() +++"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

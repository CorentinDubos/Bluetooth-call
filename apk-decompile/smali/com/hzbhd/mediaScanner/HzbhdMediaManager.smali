.class public Lcom/hzbhd/mediaScanner/HzbhdMediaManager;
.super Ljava/lang/Object;
.source "HzbhdMediaManager.java"


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field public static final ARTIST_NAME:Ljava/lang/String; = "artist_name"

.field public static final AUDIO_ID:Ljava/lang/String; = "id"

.field public static final AUDIO_NAME:Ljava/lang/String; = "name"

.field public static final AUDIO_PATH_ID:Ljava/lang/String; = "path_id"

.field public static final AUDIO_PATH_NAME:Ljava/lang/String; = "path_name"

.field public static final COMPOSER_ID:Ljava/lang/String; = "composer_id"

.field public static final COMPOSER_NAME:Ljava/lang/String; = "composer_name"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FAVORITE:Ljava/lang/String; = "favorite"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final GENRE_ID:Ljava/lang/String; = "genre_id"

.field public static final GENRE_NAME:Ljava/lang/String; = "genre_name"

.field public static final HIDE:Ljava/lang/String; = "hide"

.field private static final MEDIA_AUTHORITY:Ljava/lang/String; = "Media"

.field public static final NAME_PY:Ljava/lang/String; = "name_py"

.field public static final NEW:Ljava/lang/String; = "new"

.field public static OFF:I = 0x0

.field public static ON:I = 0x0

.field public static final PARTION_ID:Ljava/lang/String; = "partion_id"

.field public static final PHOTO_FILE_NAME:Ljava/lang/String; = "name"

.field public static final PHOTO_FILE_NAME_PY:Ljava/lang/String; = "name_py"

.field public static final PHOTO_ID:Ljava/lang/String; = "id"

.field public static final PHOTO_PATH_NAME:Ljava/lang/String; = "path_name"

.field public static final PIC:Ljava/lang/String; = "pic"

.field public static final PLAY_TIMES:Ljava/lang/String; = "play_times"

.field private static TAG:Ljava/lang/String; = null

.field public static final THUMBNAIL_FILE_ID:Ljava/lang/String; = "file_id"

.field public static final THUMBNAIL_PATH_NAME:Ljava/lang/String; = "thumb_path"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final TITLE_PY:Ljava/lang/String; = "title_py"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final VIDEO_FILE_NAME:Ljava/lang/String; = "name"

.field public static final VIDEO_FILE_NAME_PY:Ljava/lang/String; = "name_py"

.field public static final VIDEO_ID:Ljava/lang/String; = "id"

.field public static final VIDEO_PATH_NAME:Ljava/lang/String; = "path_name"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static mContext:Landroid/content/Context;

.field private static mManager:Lcom/hzbhd/mediaScanner/HzbhdMediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mManager:Lcom/hzbhd/mediaScanner/HzbhdMediaManager;

    const/4 v0, 0x1

    .line 45
    sput v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->ON:I

    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 209
    sget-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getMediaManager(Landroid/content/Context;)Lcom/hzbhd/mediaScanner/HzbhdMediaManager;
    .locals 2

    const-class v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mManager:Lcom/hzbhd/mediaScanner/HzbhdMediaManager;

    if-nez v1, :cond_0

    .line 68
    sput-object p0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    .line 69
    new-instance p0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;

    invoke-direct {p0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;-><init>()V

    sput-object p0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mManager:Lcom/hzbhd/mediaScanner/HzbhdMediaManager;

    .line 71
    :cond_0
    sget-object p0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mManager:Lcom/hzbhd/mediaScanner/HzbhdMediaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPathByFileId(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "path_id"

    const-string v1, "path_name"

    .line 216
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    sget-object v3, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    const/4 v6, 0x0

    const-string v7, "path_id=?"

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 220
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 221
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 226
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v2
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://Media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-virtual {p0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    .line 81
    invoke-static {p1}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://Media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlbums(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "id3info"

    .line 164
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "distinct album_id as _id"

    const-string v0, "album_name"

    .line 167
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "lower(trim(album_name_py))"

    move-object v1, p0

    .line 171
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getAlbumsSongs(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "id3info"

    .line 476
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "file_id"

    const-string v0, "album_id"

    const-string v1, "album_name"

    const-string/jumbo v3, "title"

    .line 479
    filled-new-array {p1, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "lower(trim(album_name_py)),lower(trim(title_py))"

    move-object v1, p0

    .line 487
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getAllPhotoPaths(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "photos"

    .line 421
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 423
    sget-object p1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "id"

    const-string v0, "path_name"

    const-string v3, "name"

    const-string v4, "name_py"

    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "lower(trim(name_py))"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getAllVideoPaths(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string/jumbo v0, "videos"

    .line 407
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 409
    sget-object p1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "id"

    const-string v0, "path_name"

    const-string v3, "name"

    const-string v4, "name_py"

    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "lower(trim(name_py))"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getArtists(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "id3info"

    .line 153
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "distinct artist_id as _id"

    const-string v0, "artist_name"

    .line 156
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "lower(trim(artist_name_py))"

    move-object v1, p0

    .line 160
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getArtistsSongs(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "id3info"

    .line 461
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "file_id"

    const-string v0, "artist_id"

    const-string v1, "artist_name"

    const-string/jumbo v3, "title"

    .line 463
    filled-new-array {p1, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "lower(trim(artist_name_py)),lower(trim(title_py))"

    move-object v1, p0

    .line 472
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getComposers(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "id3info"

    .line 185
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "distinct composer_id as _id"

    const-string v0, "composer_name"

    .line 188
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 191
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getFavoriteCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    sget v1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->ON:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "favorite=?"

    .line 143
    invoke-virtual {p0, p1, v1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getSongs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getFavorites(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "favorites"

    .line 195
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "favorite = 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 198
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getFreeStyleCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .line 429
    sget-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=========getFreeStyleCursor========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 431
    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->ON:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->ON:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const-string/jumbo v0, "songs"

    .line 432
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(new= ? or favorite= ?)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 441
    sget-object p1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "_id"

    const-string v7, "id"

    const-string v8, "name"

    const-string v9, "path_id"

    const-string v10, "path_name"

    const-string v11, "new"

    const-string v12, "favorite"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "play_times desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getGenres(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "id3info"

    .line 175
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "distinct genre_id as _id"

    const-string v0, "genre_name"

    .line 178
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 181
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getID3Songs(Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Landroid/database/Cursor;
    .locals 12

    .line 491
    invoke-virtual {p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "id3info"

    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    const-string v4, "id"

    const-string/jumbo v5, "title"

    const-string v6, "play_times"

    const-string v7, "favorite"

    const-string v8, "new"

    const-string/jumbo v9, "top"

    const-string v10, "album_id"

    const-string v11, "artist_id"

    .line 494
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "lower(trim(title_py))"

    move-object v1, p0

    .line 500
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getList(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getId3Info(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "id3info"

    move-object/from16 v2, p1

    .line 235
    invoke-static {v2, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    const-string v9, "file_id"

    const-string/jumbo v10, "title"

    const-string v11, "artist_id"

    const-string v12, "artist_name"

    const-string v13, "album_id"

    const-string v14, "album_name"

    const-string v15, "genre_id"

    const-string v16, "genre_name"

    const-string v17, "composer_id"

    const-string v18, "composer_name"

    const-string v19, "duration"

    .line 239
    filled-new-array/range {v9 .. v19}, [Ljava/lang/String;

    move-result-object v4

    .line 243
    sget-object v2, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "file_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 246
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "composer_id"

    const-string v5, "duration"

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "file_id"

    .line 248
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "title"

    .line 249
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "artist_id"

    const/4 v6, 0x2

    .line 251
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "artist_name"

    const/4 v6, 0x3

    .line 252
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "album_id"

    const/4 v6, 0x4

    .line 254
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "album_name"

    const/4 v6, 0x5

    .line 255
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "genre_id"

    const/4 v6, 0x6

    .line 257
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "genre_name"

    const/4 v6, 0x7

    .line 258
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    .line 260
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "composer_name"

    const/16 v4, 0x9

    .line 261
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xa

    .line 262
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getId3InfoList(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "id3info"

    move-object/from16 v4, p1

    .line 347
    invoke-static {v4, v3}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id"

    const-string v7, "file_id"

    const-string/jumbo v8, "title"

    const-string v9, "artist_id"

    const-string v10, "artist_name"

    const-string v11, "album_id"

    const-string v12, "album_name"

    const-string v13, "genre_id"

    const-string v14, "genre_name"

    const-string v15, "composer_id"

    const-string v16, "composer_name"

    const-string v17, "duration"

    const-string v18, "pic_name"

    .line 365
    filled-new-array/range {v6 .. v18}, [Ljava/lang/String;

    move-result-object v6

    .line 369
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    array-length v4, v1

    new-array v8, v4, [Ljava/lang/String;

    .line 372
    array-length v4, v0

    array-length v7, v1

    if-eq v4, v7, :cond_0

    .line 373
    sget-object v4, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->TAG:Ljava/lang/String;

    const-string v7, "getId3InfoList error,propertys.length!=values.length!"

    invoke-static {v4, v7}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .line 376
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_2

    const-string v7, "=?"

    if-nez v4, :cond_1

    .line 378
    aget-object v9, v0, v4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v9, " and "

    .line 380
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v9, v0, v4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :goto_1
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 1=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 389
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    if-nez p5, :cond_5

    const-string v0, "lower(title) asc"

    move-object v9, v0

    goto :goto_3

    :cond_5
    move-object/from16 v9, p5

    .line 396
    :goto_3
    sget-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getNewCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 148
    sget v1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->ON:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "new=?"

    .line 149
    invoke-virtual {p0, p1, v1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getSongs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getPathById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "filePath"

    .line 202
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getPathByFileId(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getSongById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "id3info"

    .line 290
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p3, v5, p1

    .line 294
    sget-object p1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "_id"

    const-string p2, "id"

    const-string p3, "name"

    const-string v0, "favorite"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "upper(trim(title_py))"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getSongList(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 7

    const-string/jumbo v0, "songs"

    .line 315
    invoke-static {p1, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lower(trim("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 324
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    array-length v1, p3

    new-array v5, v1, [Ljava/lang/String;

    .line 327
    array-length v1, p2

    array-length v3, p3

    if-eq v1, v3, :cond_0

    .line 328
    sget-object v1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "getSongList error,propertys.length!=values.length!"

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 331
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_2

    const-string v3, "=?"

    if-nez v1, :cond_1

    .line 333
    aget-object v4, p2, v1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v4, " and "

    .line 335
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, p2, v1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :goto_1
    aget-object v3, p3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_2
    sget-object p2, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p2, "id"

    const-string p3, "path_id"

    const-string v3, "path_name"

    filled-new-array {p2, v0, p3, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getSongs(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "path_id=?"

    goto :goto_0

    :cond_0
    const-string p2, ""

    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getSongs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getSongs(Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "path_id=?"

    goto :goto_0

    :cond_0
    const-string p2, ""

    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getSongs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getSongs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    move-object/from16 v0, p2

    const-string/jumbo v1, "songs"

    move-object v2, p1

    .line 101
    invoke-static {p1, v1}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and hide="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 110
    sget-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "_id"

    const-string v7, "id"

    const-string v8, "name"

    const-string v9, "play_times"

    const-string v10, "path_name"

    const-string v11, "favorite"

    const-string v12, "new"

    const-string/jumbo v13, "top"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "top desc"

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSongs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v0, p2

    const-string/jumbo v1, "songs"

    move-object/from16 v2, p1

    .line 126
    invoke-static {v2, v1}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz p4, :cond_0

    const-string v1, "id asc"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "top desc"

    :goto_0
    move-object v7, v1

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and hide="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->OFF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    .line 135
    sget-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "_id"

    const-string v9, "id"

    const-string v10, "name"

    const-string v11, "play_times"

    const-string v12, "path_name"

    const-string v13, "favorite"

    const-string v14, "new"

    const-string/jumbo v15, "top"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSongsByAritsId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 447
    sget-object v0, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSongsByAritsId]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "id3info"

    .line 450
    invoke-static {p1, p2}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public setFavorite(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "songs"

    .line 301
    invoke-static {p1, p2}, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 303
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "favorite"

    if-eqz p3, :cond_0

    const-string p3, "1"

    .line 305
    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 307
    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    sget-object p3, Lcom/hzbhd/mediaScanner/HzbhdMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "id=?"

    invoke-virtual {p3, p1, p2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

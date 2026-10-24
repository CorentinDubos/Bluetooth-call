.class Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;
.super Lcom/hzbhd/bluetooth/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;,
        Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x1b0000

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final FADE_TRANSITION_DURATION:I = 0xc8

.field private static final HOLDER_CACHE_SIZE:I = 0x1e8480

.field private static final LARGE_RAM_THRESHOLD:I = 0x28000000

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "ContactPhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Object;",
            "Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 282
    sput-object v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "data15"

    .line 284
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 373
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManager;-><init>()V

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 335
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 341
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 368
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 371
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 374
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 378
    new-instance p1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;

    const v0, 0xd8000

    invoke-direct {p1, p0, v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;-><init>(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;I)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 389
    new-instance p1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;

    const v0, 0xf4240

    invoke-direct {p1, p0, v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;-><init>(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;I)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    const p1, 0xb71b0

    .line 399
    iput p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    const-string p1, "ContactPhotoManager"

    const-string v0, "Cache adj: 0.5"

    .line 400
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    invoke-static {v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 403
    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    invoke-static {v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->dumpStats()V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)I
    .locals 0

    .line 265
    iget p0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return p0
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 265
    sget-object v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 265
    sget-object v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1251
    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 1

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 p0, p0, 0x3ff

    div-int/lit16 p0, p0, 0x400

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    const-string v1, "ContactPhotoManager"

    if-eqz v0, :cond_2

    .line 779
    iget-object v2, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v2, :cond_2

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overwriting cache: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v3, :cond_0

    const-string v3, " FRESH"

    goto :goto_0

    :cond_0
    const-string v3, " stale"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-boolean v0, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 787
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching data: key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    const-string v2, "<null>"

    goto :goto_2

    .line 788
    :cond_3
    array-length v2, p2

    invoke-static {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    new-instance v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_4

    const/4 v1, -0x1

    goto :goto_3

    .line 790
    :cond_4
    invoke-static {p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->getSmallerExtentFromBytes([B)I

    move-result v1

    :goto_3
    invoke-direct {v0, p2, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    if-nez p3, :cond_5

    .line 795
    invoke-static {v0, p4}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->inflateBitmap(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 798
    :cond_5
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 799
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    return-void
.end method

.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 605
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 606
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    .line 608
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private dumpStats()V
    .locals 8

    .line 426
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    add-int/lit8 v4, v4, 0x1

    .line 428
    iget-object v7, v6, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v7, :cond_1

    .line 429
    iget-object v7, v6, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v7, v7

    add-int/2addr v2, v7

    .line 431
    :cond_1
    iget-object v7, v6, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v7, :cond_2

    iget-object v6, v6, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 434
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0

    .line 437
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L1: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " + "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v2, v3

    .line 438
    invoke-static {v6}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " holders, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bitmaps, avg: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-static {v2, v4}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->safeDiv(II)I

    move-result v2

    invoke-static {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {v3, v5}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->safeDiv(II)I

    move-result v2

    invoke-static {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContactPhotoManager"

    .line 437
    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L1 Stats: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", overwrite: fresh="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 443
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stale="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 444
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    add-int/lit8 v3, v3, 0x1

    .line 452
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 454
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L2: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v1, v3}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->safeDiv(II)I

    move-result v1

    invoke-static {v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3

    .line 764
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 767
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 768
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 771
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static inflateBitmap(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 3

    .line 618
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz p1, :cond_2

    .line 619
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 628
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 635
    :cond_1
    :try_start_0
    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 653
    iput v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 654
    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 655
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    const-string p0, "ContactPhotoManager"

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;Z)Z
    .locals 7

    .line 541
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    return v1

    .line 548
    :cond_0
    iget-object v2, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v2, :cond_1

    .line 549
    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 550
    iget-boolean p1, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return p1

    .line 553
    :cond_1
    iget-object v2, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v2, :cond_4

    .line 555
    iget-object v2, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v2, v2

    const/16 v4, 0x2000

    if-ge v2, v4, :cond_3

    .line 557
    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v2

    invoke-static {v0, v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->inflateBitmap(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 558
    iget-object v2, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    return v1

    .line 563
    :cond_3
    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    return v1

    .line 568
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p3, :cond_6

    if-eqz v4, :cond_6

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    .line 572
    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 573
    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 576
    invoke-virtual {v4}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v5

    sub-int/2addr v5, v6

    .line 575
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, p3, v1

    goto :goto_1

    :cond_5
    aput-object v4, p3, v1

    .line 580
    :goto_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v1, p3, v6

    .line 581
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 582
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xc8

    .line 583
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2

    .line 585
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 590
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    iget-object p3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->maxSize()I

    move-result p3

    div-int/lit8 p3, p3, 0x6

    if-ge p1, p3, :cond_7

    .line 591
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_7
    iput-object v3, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 597
    iget-boolean p1, v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return p1
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;)V
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPaused:Z

    if-nez p1, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->requestLoading()V

    :cond_1
    :goto_0
    return-void
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .line 821
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 822
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 823
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 835
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 836
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 837
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    .line 838
    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    if-eqz v3, :cond_2

    .line 839
    iget-object v4, v3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 840
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 842
    :cond_1
    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v1

    invoke-static {v3, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->inflateBitmap(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 845
    iget-boolean v3, v3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v3, :cond_0

    .line 846
    :cond_3
    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 847
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    :cond_4
    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-static {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->access$100(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 856
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 737
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 739
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x1

    .line 740
    invoke-direct {p0, v1, v2, v3}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 746
    :cond_1
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->softenCache()V

    .line 748
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->requestLoading()V

    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .line 692
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 694
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 413
    :cond_0
    div-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method private softenCache()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    .line 759
    iput-object v2, v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 3

    .line 804
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 807
    sget-object v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->DEFAULT_AVATAR:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    move-result-object p1

    .line 808
    new-instance v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v1, p3, v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 809
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 810
    iget-object p3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iput-boolean v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 812
    iget-object p3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, "ContactPhotoManager"

    const-string v1, "clear"

    .line 665
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 667
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 668
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoaderThread:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoaderThread:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;

    .line 727
    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->start()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 703
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 714
    :cond_0
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPaused:Z

    if-nez p1, :cond_1

    .line 715
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->processLoadedImages()V

    .line 717
    :cond_1
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->dumpStats()V

    return v1

    .line 705
    :cond_2
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 706
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPaused:Z

    if-nez p1, :cond_3

    .line 707
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 708
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoaderThread:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    :cond_3
    return v1
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V
    .locals 2

    if-nez p2, :cond_0

    .line 494
    invoke-virtual {p5, p1, p3, p4}, Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    .line 495
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPhoto request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPhotoManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p2, p3, p4, p5}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;)V

    :goto_0
    return-void
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V
    .locals 0

    const/4 p2, -0x1

    .line 480
    invoke-virtual {p5, p1, p2, p4}, Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    .line 481
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPhotoManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->clear()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 673
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPaused:Z

    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 472
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mLoaderThread:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method public refreshCache()V
    .locals 3

    .line 524
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    const-string v1, "ContactPhotoManager"

    if-eqz v0, :cond_0

    const-string v0, "refreshCache -- no fresh entries."

    .line 525
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "refreshCache"

    .line 528
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 530
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    .line 531
    iput-boolean v2, v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPaused:Z

    .line 679
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->dumpStats()V

    .line 680
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->requestLoading()V

    :cond_0
    return-void
.end method

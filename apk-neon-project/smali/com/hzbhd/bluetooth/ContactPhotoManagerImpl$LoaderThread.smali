.class Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final MAX_PHOTOS_TO_PRELOAD:I = 0x64

.field private static final MESSAGE_LOAD_PHOTOS:I = 0x1

.field private static final MESSAGE_PRELOAD_PHOTOS:I = 0x0

.field private static final PHOTO_PRELOAD_DELAY:I = 0x3e8

.field private static final PRELOAD_BATCH:I = 0x19

.field private static final PRELOAD_STATUS_DONE:I = 0x2

.field private static final PRELOAD_STATUS_IN_PROGRESS:I = 0x1

.field private static final PRELOAD_STATUS_NOT_STARTED:I


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    const-string p1, "ContactPhotoLoader"

    .line 900
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 885
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 886
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 887
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 888
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 p1, 0x0

    .line 897
    iput p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 901
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .line 1040
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$400(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 1041
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1042
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1043
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 14

    .line 1048
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 1054
    iget v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v2, v1, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1056
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1058
    :cond_1
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    iput v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1063
    :cond_2
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1064
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v4, "_id IN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 1065
    :goto_1
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-eqz v2, :cond_3

    .line 1067
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1069
    :cond_3
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1071
    :cond_4
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "ContactPhotoManager"

    .line 1075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    iget-object v7, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1077
    invoke-static {}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$500()[Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 1079
    invoke-static {}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$600()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 1076
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    .line 1083
    :goto_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1084
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1085
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1086
    iget-object v8, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {v8, v6, v7, p1, v5}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1087
    iget-object v7, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_6

    :cond_5
    if-eqz v4, :cond_6

    .line 1092
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_6
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1098
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1101
    :try_start_2
    iget-object v8, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1102
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1103
    invoke-static {}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$500()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1101
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_8

    .line 1104
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1105
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-static {v6, v8, v9, p1, v5}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_4

    .line 1109
    :cond_8
    iget-object v8, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {v8, v6, v2, p1, v5}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v7, :cond_7

    .line 1113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v7

    goto :goto_5

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1115
    :cond_9
    throw p1

    .line 1118
    :cond_a
    iget-object v7, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {v7, v6, v2, p1, v5}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_3

    .line 1122
    :cond_b
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$800(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v2, :cond_c

    .line 1092
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_c
    throw p1
.end method

.method private loadUriBasedPhotos()V
    .locals 10

    const-string v0, "ContactPhotoManager"

    .line 1130
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    .line 1131
    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1132
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v4, :cond_0

    const/16 v4, 0x4000

    new-array v4, v4, [B

    .line 1133
    iput-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1136
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1139
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 1143
    iget-object v9, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v7, v9, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1146
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1148
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1149
    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v8

    .line 1148
    invoke-static {v6, v3, v7, v5, v8}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1150
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {v6}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$800(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    .line 1146
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1147
    throw v7

    .line 1152
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot load photo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v7

    invoke-static {v6, v3, v4, v5, v7}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1157
    :catch_0
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v2

    invoke-static {v6, v3, v4, v5, v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$700(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 6

    .line 966
    iget v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 971
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 972
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    iput v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 975
    :cond_1
    iput v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 977
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$200(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$300(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)I

    move-result v3

    if-le v0, v3, :cond_3

    .line 982
    iput v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    return-void

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 987
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 990
    iget-object v3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-lez v3, :cond_4

    .line 991
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x19

    if-ge v4, v5, :cond_4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 994
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 995
    iget-object v5, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 996
    iget-object v5, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1000
    :cond_4
    invoke-direct {p0, v2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    if-nez v3, :cond_5

    .line 1003
    iput v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1006
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " photos.  Cached bytes: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    .line 1007
    invoke-static {v0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$200(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPhotoManager"

    .line 1006
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method private queryPhotosForPreload()V
    .locals 8

    const/4 v0, 0x0

    .line 1015
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    .line 1016
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const/16 v3, 0x64

    .line 1018
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1019
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1020
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "photo_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "photo_id NOT NULL AND photo_id!=0"

    const/4 v6, 0x0

    const-string/jumbo v7, "starred DESC, last_time_contacted DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1034
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1036
    :cond_2
    throw v1
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 948
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 950
    :cond_1
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    :goto_0
    return v0
.end method

.method public requestLoading()V
    .locals 2

    .line 937
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 938
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .line 918
    iget v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 923
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

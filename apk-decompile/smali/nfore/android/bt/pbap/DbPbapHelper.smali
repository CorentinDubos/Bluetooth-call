.class public Lnfore/android/bt/pbap/DbPbapHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbPbapHelper.java"


# static fields
.field private static final CALLHISTORY_CONTENT:Ljava/lang/String; = "CallHistory"

.field public static final CALLHISTORY_FIELD:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "db_pbap"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final PHONEBOOK_CONTENT:Ljava/lang/String; = "PhoneBookContent"

.field public static final PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

.field private static final PHONENUMBER_DETAIL:Ljava/lang/String; = "PhoneNumberDetail"

.field public static final PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

.field private static final PHONE_TYPE:Ljava/lang/String; = "PhoneType"

.field public static final PHONE_TYPE_FIELD:[Ljava/lang/String;


# instance fields
.field private final D:Z

.field private final SQL_DELETE_CONTACTER:Ljava/lang/String;

.field private final SQL_DELETE_PHONENUMBER:Ljava/lang/String;

.field private final SQL_DELETE_PHONENUMBER_BY_FULLNAME:Ljava/lang/String;

.field private final SQL_EXPRESS_TOTAL:Ljava/lang/String;

.field private final SQL_QUERY_CALLHISTORY_BY_ADDRESS_STORAGETYPE:Ljava/lang/String;

.field private final SQL_QUERY_CALLHISTORY_BY_SPECIFIED_COLUMNS:Ljava/lang/String;

.field private final SQL_QUERY_CONTACTER:Ljava/lang/String;

.field private final SQL_QUERY_CONTACTERS:Ljava/lang/String;

.field private final SQL_QUERY_FULLNAME_BY_PHONENUM_CELLPHONEADDRESS:Ljava/lang/String;

.field private final SQL_QUERY_PHONEBOOKCONTENT:Ljava/lang/String;

.field private final SQL_QUERY_PHONEBOOKCONTENT_BY_PHONENUM:Ljava/lang/String;

.field private final SQL_QUERY_PHONEDATA_BY_PAGE:Ljava/lang/String;

.field private final SQL_QUERY_PHONENUMBERDETAIL:Ljava/lang/String;

.field private final SQL_QUERY_PHONETYPE_NAME:Ljava/lang/String;

.field private final SQL_QUERY_PHONE_BY_CONTENT_ID:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "_id"

    const-string v1, "FullName"

    const-string v2, "FirstName"

    const-string v3, "LastName"

    const-string v4, "First_StreetAddress"

    const-string v5, "First_CityNameAddress"

    const-string v6, "First_FederalStateAddress"

    const-string v7, "First_ZipCodeAddress"

    const-string v8, "First_CountryAddress"

    const-string v9, "Second_StreetAddress"

    const-string v10, "Second_CityNameAddress"

    const-string v11, "Second_FederalStateAddress"

    const-string v12, "Second_ZipCodeAddress"

    const-string v13, "Second_CountryAddress"

    const-string v14, "CellPhone_Address"

    const-string v15, "StorageType"

    .line 70
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 54
    sput-object v0, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "Content_ID"

    const-string v2, "Type"

    const-string v3, "Number"

    .line 73
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnfore/android/bt/pbap/DbPbapHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    const-string v0, "TypeName"

    .line 76
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnfore/android/bt/pbap/DbPbapHelper;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "FullName"

    const-string v3, "FirstName"

    const-string v4, "LastName"

    const-string v5, "CellPhone_Address"

    const-string v6, "StorageType"

    const-string v7, "PhoneType"

    const-string v8, "PhoneNumber"

    const-string v9, "HistoryDate"

    const-string v10, "HistoryTime"

    .line 80
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "db_pbap"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 87
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    iput-boolean v2, p0, Lnfore/android/bt/pbap/DbPbapHelper;->D:Z

    const-string v0, "nfore DBHelper"

    .line 32
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName limit 10 offset ?) and StorageType=? and CellPhone_Address = ? order by FullName"

    .line 853
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_PHONEDATA_BY_PAGE:Ljava/lang/String;

    const-string/jumbo v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName) and StorageType=? and CellPhone_Address = ? order by "

    .line 859
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_CONTACTERS:Ljava/lang/String;

    const-string/jumbo v0, "select a._id, a.FullName, a.StorageType, a.PhoneNumber, a.PhoneType, a.HistoryDate, a.HistoryTime from CallHistory a where a.CellPhone_Address = ? and a.StorageType=? order by "

    .line 866
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_CALLHISTORY_BY_ADDRESS_STORAGETYPE:Ljava/lang/String;

    const-string/jumbo v0, "select * from CallHistory a where a.StorageType = ? and a.CellPhone_Address = ?"

    .line 879
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_CALLHISTORY_BY_SPECIFIED_COLUMNS:Ljava/lang/String;

    const-string/jumbo v0, "select a.*, b.TypeName as TypeName from PhoneNumberDetail a inner join PhoneType b on a.Type = b.Type where a.Content_ID = ?"

    .line 884
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_PHONE_BY_CONTENT_ID:Ljava/lang/String;

    const-string/jumbo v0, "select * from PhoneBookContent where FullName like ? and StorageType = ? and CellPhone_Address = ?"

    .line 888
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_PHONEBOOKCONTENT:Ljava/lang/String;

    const-string/jumbo v0, "select * from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number like ?) and StorageType = ? and CellPhone_Address = ?"

    .line 892
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_PHONEBOOKCONTENT_BY_PHONENUM:Ljava/lang/String;

    const-string/jumbo v0, "select FullName from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number = ?) and CellPhone_Address = ?"

    .line 897
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_FULLNAME_BY_PHONENUM_CELLPHONEADDRESS:Ljava/lang/String;

    const-string/jumbo v0, "select a.*, b.TypeName from PhoneNumberDetail.a inner join PhoneType b on a.Type = b.Type where Number = ?"

    .line 902
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_PHONENUMBERDETAIL:Ljava/lang/String;

    const-string v0, "delete from PhoneBookContent where FullName = ?"

    .line 906
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_DELETE_CONTACTER:Ljava/lang/String;

    const-string v0, "delete from PhoneNumberDetail where Number = ?"

    .line 910
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_DELETE_PHONENUMBER:Ljava/lang/String;

    const-string v0, "delete from PhoneNumberDetail where Content_ID in (select _id from PhoneBookContent where FullName = ?)"

    .line 914
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_DELETE_PHONENUMBER_BY_FULLNAME:Ljava/lang/String;

    const-string/jumbo v0, "select TypeName from PhoneType where Type = ? "

    .line 925
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_PHONETYPE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "select a.FullName from PhoneBookContent a where a.CellPhone_Address=? and StorageType=? group by a.FullName"

    .line 927
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_EXPRESS_TOTAL:Ljava/lang/String;

    const-string/jumbo v0, "select FullName from PhoneBookContent where _id = (select Content_ID from PhoneNumberDetail where Number like ? limit 1)"

    .line 931
    iput-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->SQL_QUERY_CONTACTER:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lnfore/android/bt/pbap/DbPbapHelper;->m_context:Landroid/content/Context;

    return-void
.end method

.method private collectionData(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lnfore/android/bt/pbap/VCardPack;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 762
    :cond_0
    new-instance v1, Lnfore/android/bt/pbap/VCardPack;

    invoke-direct {v1}, Lnfore/android/bt/pbap/VCardPack;-><init>()V

    const-string v2, "FullName"

    .line 763
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnfore/android/bt/pbap/VCardPack;->setFullName(Ljava/lang/String;)V

    const-string v2, "_id"

    .line 765
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnfore/android/bt/pbap/VCardPack;->set_id(I)V

    .line 767
    new-instance v2, Lnfore/android/bt/pbap/PhoneInfo;

    invoke-direct {v2}, Lnfore/android/bt/pbap/PhoneInfo;-><init>()V

    .line 769
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "StorageType"

    .line 774
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    if-lez v5, :cond_1

    const-string v5, "Number"

    .line 778
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    const-string v5, "Type"

    .line 779
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lt v5, v6, :cond_2

    const/4 v6, 0x5

    if-gt v5, v6, :cond_2

    const-string v5, "PhoneNumber"

    .line 782
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    const-string v5, "PhoneType"

    .line 783
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneType(Ljava/lang/String;)V

    const-string v5, "HistoryDate"

    .line 784
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnfore/android/bt/pbap/VCardPack;->setHistoryDate(Ljava/lang/String;)V

    const-string v5, "HistoryTime"

    .line 785
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnfore/android/bt/pbap/VCardPack;->setHistoryTime(Ljava/lang/String;)V

    .line 788
    :cond_2
    :goto_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {v1, v3}, Lnfore/android/bt/pbap/VCardPack;->setPhoneNumbers(Ljava/util/Set;)V

    .line 790
    invoke-virtual {v1, v4}, Lnfore/android/bt/pbap/VCardPack;->setStorageType(Ljava/lang/String;)V

    .line 792
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return-object v0
.end method

.method private queryContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "%"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string/jumbo p2, "select * from PhoneBookContent where FullName like ? and StorageType = ? and CellPhone_Address = ?"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private queryContacterByPhoneNum(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string/jumbo p2, "select * from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number like ?) and StorageType = ? and CellPhone_Address = ?"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public callHistoryBySpecifiedColumns(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnfore/android/bt/pbap/VCardList;
    .locals 2

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "%"

    const-string/jumbo v1, "select * from CallHistory a where a.StorageType = ? and a.CellPhone_Address = ?"

    if-lez p2, :cond_0

    .line 697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " and a.HistoryDate like ?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 703
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " and a.HistoryTime like ?"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 709
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " and a.PhoneNumber like ?"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 714
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 716
    invoke-direct {p0, p1}, Lnfore/android/bt/pbap/DbPbapHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    .line 717
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 719
    new-instance p1, Lnfore/android/bt/pbap/VCardList;

    invoke-direct {p1}, Lnfore/android/bt/pbap/VCardList;-><init>()V

    .line 720
    invoke-virtual {p1, p2}, Lnfore/android/bt/pbap/VCardList;->setVcardPacks(Ljava/util/List;)V

    return-object p1
.end method

.method public deleteAllTableContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "PhoneNumberDetail"

    const/4 v1, 0x0

    .line 942
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "PhoneBookContent"

    .line 943
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "CallHistory"

    .line 944
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteCallHistoryById(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "CallHistory"

    const-string v1, "_id=?"

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteCallHistoryInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 522
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "CallHistory"

    const-string p3, "CellPhone_Address=? and StorageType=?"

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "delete from PhoneBookContent where FullName = ?"

    .line 412
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteContacterById(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PhoneNumberDetail"

    const-string v4, "Content_ID=?"

    invoke-virtual {p1, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v0, v0, [Ljava/lang/String;

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "PhoneBookContent"

    const-string v1, "_id=?"

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deletePhoneNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "delete from PhoneNumberDetail where Number = ?"

    .line 418
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deletePhoneNumberByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "delete from PhoneNumberDetail where Content_ID in (select _id from PhoneBookContent where FullName = ?)"

    .line 423
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteVcardInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 11

    const-string v0, "_id"

    .line 497
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v5, v9

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v5, v10

    const-string v2, "PhoneBookContent"

    const-string v4, "CellPhone_Address=? and StorageType=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 500
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v9

    :cond_0
    new-array v3, v10, [Ljava/lang/String;

    .line 504
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "PhoneNumberDetail"

    const-string v5, "Content_ID=?"

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_0
    if-ltz v2, :cond_2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v9

    .line 512
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v10

    const-string p2, "PhoneBookContent"

    const-string p3, "CellPhone_Address=? and StorageType=?"

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr v9, p1

    .line 514
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v9
.end method

.method public insertCallHistoryInfo(Landroid/database/sqlite/SQLiteDatabase;Lnfore/android/bt/pbap/VCardPack;I)V
    .locals 4

    .line 575
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_1

    .line 578
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirstName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LastName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellPhone_Address"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "StorageType"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object p3

    .line 585
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getHistoryDate()Ljava/lang/String;

    move-result-object p3

    const-string v1, "HistoryDate"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getHistoryTime()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HistoryTime"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string p3, "CallHistory"

    .line 593
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 585
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnfore/android/bt/pbap/PhoneInfo;

    .line 586
    invoke-virtual {v1}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneType"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public insertNumberType(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "TypeName"

    const-string v1, "Type"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 162
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 165
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 166
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PhoneType"

    const/4 v7, 0x0

    .line 168
    invoke-virtual {p1, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    iget-object p2, p0, Lnfore/android/bt/pbap/DbPbapHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    long-to-int p1, v3

    return p1
.end method

.method public insertPhoneType(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v0, "TypeName"

    const-string v1, "Type"

    .line 192
    iget-object v2, p0, Lnfore/android/bt/pbap/DbPbapHelper;->TAG:Ljava/lang/String;

    const-string v3, "insertPhoneType"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lnfore/android/bt/pbap/DbPbapHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "phonetype.xml"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :try_start_1
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "phoneType"

    .line 209
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 214
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Lnfore/android/bt/pbap/DbPbapHelper;->isEmptyPhoneType(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "amount"

    .line 235
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 237
    invoke-virtual {p0, p1, v3}, Lnfore/android/bt/pbap/DbPbapHelper;->insertNumberType(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    .line 240
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 215
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 216
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 217
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 218
    invoke-interface {v6, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 219
    invoke-interface {v6, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_2
    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 221
    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 244
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    iget-object v0, p0, Lnfore/android/bt/pbap/DbPbapHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 250
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public insertVcardInfo(Landroid/database/sqlite/SQLiteDatabase;Lnfore/android/bt/pbap/VCardPack;I)V
    .locals 6

    .line 534
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_1

    .line 537
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirstName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LastName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirst_StreetAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "First_StreetAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirst_CityNameAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "First_CityNameAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirst_FederalStateAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "First_FederalStateAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirst_ZipCodeAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "First_ZipCodeAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getFirst_CountryAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "First_CountryAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getSecond_StreetAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Second_StreetAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getSecond_CityNameAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Second_CityNameAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getSecond_FederalStateAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Second_FederalStateAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getSecond_ZipCodeAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Second_ZipCodeAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getSecond_CountryAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Second_CountryAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellPhone_Address"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "StorageType"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "PhoneBookContent"

    const/4 v1, 0x0

    .line 553
    invoke-virtual {p1, p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 555
    invoke-virtual {p2}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object p2

    .line 556
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnfore/android/bt/pbap/PhoneInfo;

    .line 557
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 559
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Content_ID"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    invoke-virtual {p3}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Type"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p3}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object p3

    const-string v4, "Number"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "PhoneNumberDetail"

    .line 564
    invoke-virtual {p1, p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isEmptyPhoneType(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2

    const-string/jumbo v0, "select count(*) as amount from PhoneType"

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    move-object/from16 v0, p1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS PhoneBookContent ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER primary key autoincrement, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " varchar(16), "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " varchar(8), "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    sget-object v7, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v4, v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " varchar(20), "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " varchar(12), "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object v11, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    sget-object v11, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v11, v11, v13

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget-object v11, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v14, 0x8

    aget-object v11, v11, v14

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " varchar(30), "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    sget-object v15, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v16, 0x9

    aget-object v15, v15, v16

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v15, 0xa

    aget-object v4, v4, v15

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v15, 0xb

    aget-object v4, v4, v15

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v15, 0xc

    aget-object v4, v4, v15

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v4, v4, v9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v9, 0xe

    aget-object v4, v4, v9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v9, 0xf

    aget-object v4, v4, v9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " varchar(10) "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ");"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "CREATE TABLE IF NOT EXISTS PhoneNumberDetail ("

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " INTEGER, "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " nvarchar(5), "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " nvarchar(20),"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "FOREIGN KEY("

    .line 121
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") REFERENCES "

    .line 122
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "PhoneBookContent"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lnfore/android/bt/pbap/DbPbapHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") "

    .line 123
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TABLE IF NOT EXISTS PhoneType ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nvarchar(5) , "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nvarchar(26) );"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TABLE IF NOT EXISTS CallHistory ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object v4, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(16), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(8), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v3, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(30) not null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(10) not null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(5) not null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(20) not null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(8) not null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    sget-object v2, Lnfore/android/bt/pbap/DbPbapHelper;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(6) not null);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p1}, Lnfore/android/bt/pbap/DbPbapHelper;->insertPhoneType(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public queryCallHistoryByAddressAndStorageType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnfore/android/bt/pbap/VCardPack;",
            ">;"
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "select a._id, a.FullName, a.StorageType, a.PhoneNumber, a.PhoneType, a.HistoryDate, a.HistoryTime from CallHistory a where a.CellPhone_Address = ? and a.StorageType=? order by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-virtual {p1, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 730
    invoke-direct {p0, p2}, Lnfore/android/bt/pbap/DbPbapHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p3

    .line 732
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 735
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnfore/android/bt/pbap/VCardPack;

    .line 737
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 739
    :goto_1
    invoke-virtual {p4}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p4}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v2

    .line 742
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/pbap/PhoneInfo;

    .line 744
    invoke-virtual {v3}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lnfore/android/bt/pbap/DbPbapHelper;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 745
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 746
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 747
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public queryContacterByPhoneNumAndAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string/jumbo p2, "select FullName from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number = ?) and CellPhone_Address = ?"

    .line 391
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryContacterInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lnfore/android/bt/pbap/VCardList;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 272
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    .line 279
    invoke-direct {p0, p1, p2, p4, p5}, Lnfore/android/bt/pbap/DbPbapHelper;->queryContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 283
    invoke-direct {p0, p1, p3, p4, p5}, Lnfore/android/bt/pbap/DbPbapHelper;->queryContacterByPhoneNum(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 286
    :cond_4
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_9

    .line 291
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p4

    if-lez p4, :cond_9

    .line 293
    :cond_5
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_7

    :cond_6
    const-string p4, "_id"

    .line 296
    invoke-interface {v1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 298
    invoke-interface {v1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lnfore/android/bt/pbap/DbPbapHelper;->queryPhoneNumberByContentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    const-string p5, "Number"

    .line 300
    invoke-interface {p4, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    const-string v2, "TypeName"

    .line 302
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 304
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 306
    :goto_5
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    .line 309
    invoke-interface {p4, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 320
    :goto_6
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_5

    .line 321
    new-instance p4, Lnfore/android/bt/pbap/VCardPack;

    invoke-direct {p4, v1}, Lnfore/android/bt/pbap/VCardPack;-><init>(Landroid/database/Cursor;)V

    .line 323
    invoke-virtual {p4, v3}, Lnfore/android/bt/pbap/VCardPack;->setPhoneNumbers(Ljava/util/Set;)V

    .line 324
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 312
    :cond_8
    new-instance v4, Lnfore/android/bt/pbap/PhoneInfo;

    invoke-direct {v4}, Lnfore/android/bt/pbap/PhoneInfo;-><init>()V

    .line 313
    invoke-interface {p4, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 315
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 316
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 329
    :cond_9
    :goto_7
    new-instance p1, Lnfore/android/bt/pbap/VCardList;

    invoke-direct {p1}, Lnfore/android/bt/pbap/VCardList;-><init>()V

    .line 330
    invoke-virtual {p1, p2}, Lnfore/android/bt/pbap/VCardList;->setVcardPacks(Ljava/util/List;)V

    return-object p1
.end method

.method public queryContactersInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnfore/android/bt/pbap/VCardPack;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName) and StorageType=? and CellPhone_Address = ? order by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 p3, 0x3

    aput-object p2, v0, p3

    invoke-virtual {p1, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 650
    invoke-direct {p0, p2}, Lnfore/android/bt/pbap/DbPbapHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p3

    .line 652
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 655
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnfore/android/bt/pbap/VCardPack;

    .line 657
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 659
    :goto_1
    invoke-virtual {p4}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p4}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v2

    .line 662
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/pbap/PhoneInfo;

    .line 664
    invoke-virtual {v3}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lnfore/android/bt/pbap/DbPbapHelper;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 665
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 666
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 667
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public queryNameByPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 833
    invoke-virtual {p0}, Lnfore/android/bt/pbap/DbPbapHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "select FullName from PhoneBookContent where _id = (select Content_ID from PhoneNumberDetail where Number like ? limit 1)"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 840
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "N/A"

    .line 845
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 846
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method

.method public queryNumberDetailByPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "select a.*, b.TypeName from PhoneNumberDetail.a inner join PhoneType b on a.Type = b.Type where Number = ?"

    .line 399
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryPhoneDataByPage(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnfore/android/bt/pbap/VCardPack;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p5, v0, v2

    mul-int/2addr p3, p4

    .line 608
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    const/4 p3, 0x3

    aput-object p5, v0, p3

    const/4 p3, 0x4

    aput-object p2, v0, p3

    const-string/jumbo p2, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName limit 10 offset ?) and StorageType=? and CellPhone_Address = ? order by FullName"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 610
    invoke-direct {p0, p2}, Lnfore/android/bt/pbap/DbPbapHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p3

    .line 612
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 615
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnfore/android/bt/pbap/VCardPack;

    .line 617
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    move p5, v1

    .line 619
    :goto_1
    invoke-virtual {p4}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lt p5, v0, :cond_1

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p4}, Lnfore/android/bt/pbap/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v0

    .line 622
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/pbap/PhoneInfo;

    .line 624
    invoke-virtual {v2}, Lnfore/android/bt/pbap/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lnfore/android/bt/pbap/DbPbapHelper;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 625
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnfore/android/bt/pbap/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 627
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public queryPhoneNumberByContentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "select a.*, b.TypeName as TypeName from PhoneNumberDetail a inner join PhoneType b on a.Type = b.Type where a.Content_ID = ?"

    .line 406
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    if-nez p2, :cond_0

    const-string p2, "C"

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "select TypeName from PhoneType where Type = ? "

    .line 372
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryTotalAmount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string/jumbo p2, "select a.FullName from PhoneBookContent a where a.CellPhone_Address=? and StorageType=? group by a.FullName"

    .line 819
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 821
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 822
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method

.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SoftphoneSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final SQL_CREATE_ACCOUNT:Ljava/lang/String; = "CREATE TABLE account( account_id TEXT, impi TEXT, msisdn TEXT, access_token TEXT, token_type TEXT, secret_key TEXT, label TEXT, status INTEGER, environment INT DEFAULT -1, userid INT DEFAULT 0 );"

.field private static final SQL_CREATE_ADDRESS:Ljava/lang/String; = "CREATE TABLE address( _id INTEGER PRIMARY KEY AUTOINCREMENT, account_id TEXT, name TEXT, houseNumber TEXT, houseNumExt TEXT, streetDir TEXT, street TEXT, streetNameSuffix TEXT, streetDirSuffix TEXT, city TEXT, state TEXT, zip TEXT, addressAdditional TEXT, formattedAddress TEXT, E911AID TEXT, expire_date TEXT, status INT DEFAULT 0, default_status INT DEFAULT 0 );"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 615
    const-string/jumbo v0, "softphone.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 616
    return-void
.end method

.method private migrateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 646
    .local v1, "oldDataCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 647
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 649
    .local v2, "values":Landroid/content/ContentValues;
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 650
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 651
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 654
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 657
    .end local v4    # "i":I
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "count":I
    goto :goto_0

    .line 659
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_3
    return-object v0
.end method

.method private upgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p3, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 669
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 670
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 668
    nop

    .end local v1    # "values":Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 675
    nop

    .line 676
    return-void

    .line 674
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 675
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 620
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating DB."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "CREATE TABLE account( account_id TEXT, impi TEXT, msisdn TEXT, access_token TEXT, token_type TEXT, secret_key TEXT, label TEXT, status INTEGER, environment INT DEFAULT -1, userid INT DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    const-string v0, "CREATE TABLE address( _id INTEGER PRIMARY KEY AUTOINCREMENT, account_id TEXT, name TEXT, houseNumber TEXT, houseNumExt TEXT, streetDir TEXT, street TEXT, streetNameSuffix TEXT, streetDirSuffix TEXT, city TEXT, state TEXT, zip TEXT, addressAdditional TEXT, formattedAddress TEXT, E911AID TEXT, expire_date TEXT, status INT DEFAULT 0, default_status INT DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 627
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade() oldVersion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , newVersion ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "account"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider$DatabaseHelper;->migrateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 630
    .local v1, "accountValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v2, "address"

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider$DatabaseHelper;->migrateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 631
    .local v3, "addressValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v4, "DROP TABLE IF EXISTS account"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    const-string v4, "DROP TABLE IF EXISTS address"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 636
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider$DatabaseHelper;->upgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 637
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneSettingsProvider$DatabaseHelper;->upgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 638
    return-void
.end method

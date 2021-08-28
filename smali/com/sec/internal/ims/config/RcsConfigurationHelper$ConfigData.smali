.class public Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
.super Ljava/lang/Object;
.source "RcsConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/RcsConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigData"
.end annotation


# instance fields
.field mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    .line 330
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getUriParamWithPhoneId(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 332
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v7, v1

    .line 333
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 335
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 336
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "NODATA"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 346
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_0
    return-void

    .line 341
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 342
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    .line 346
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "dataMap"    # Ljava/util/Map;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    .line 326
    iput-object p1, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    .line 327
    return-void
.end method

.method private readFromMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "param"    # Ljava/lang/String;

    .line 423
    const-string v0, ""

    .line 424
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromMap: param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RcsConfigurationHelper"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 429
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFromMap: path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-nez v1, :cond_1

    .line 432
    const-string/jumbo v2, "readFromMap: path is null"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v0

    .line 436
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 437
    const-string v4, " value: "

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-object v0

    .line 441
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readFromSecondMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string/jumbo v5, "root/application/0/ext/uuid_Value"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v7, "readFromMap: "

    if-eqz v6, :cond_3

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'s value is null, trying to get from old path"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v6, "root/application/1/other/uuid_Value"

    .line 450
    .local v6, "newFullPath":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "root/application/1/other/uuid_Value"

    invoke-virtual {v10, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    .line 453
    .end local v6    # "newFullPath":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v0

    .line 458
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'s value is null, trying to get from UP20 path"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v2, "root/application/0/3gpp_ims/ext/gsma/uuid_Value"

    .line 464
    .local v2, "newUP20Path":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "root/application/0/3gpp_ims/ext/gsma/uuid_Value"

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 466
    .end local v2    # "newUP20Path":Ljava/lang/String;
    :cond_5
    return-object v0

    .line 426
    .end local v1    # "path":Ljava/lang/String;
    :cond_6
    :goto_0
    const-string/jumbo v1, "readFromMap: cannot read the param"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-object v0
.end method

.method private readListFromMap(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readListFromMap: param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RcsConfigurationHelper"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 476
    :cond_0
    const-string v1, "capdiscoveryallowedprefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    const-string/jumbo v1, "root/application/1/capdiscovery/capdiscoverywhitelist/capdiscoveryallowedprefixes/prefix"

    .line 478
    .local v1, "prefixPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v3, "root/application/1/capdiscovery/capdiscoverywhitelist/capdiscoveryallowedprefixes/prefix"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getCapAllowedPrefixes(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 479
    return-object v0

    .line 481
    .end local v1    # "prefixPath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "public_user_identity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 482
    const-string/jumbo v1, "root/application/0/public_user_identity_list/"

    .line 483
    .local v1, "addrPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v3, "root/application/0/public_user_identity_list/"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 485
    const-string/jumbo v2, "root/application/0/public_user_identity_list/0/public_user_identities/"

    .line 486
    .local v2, "addrUp10Path":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 487
    move-object v3, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v4, "root/application/0/public_user_identity_list/0/public_user_identities/"

    invoke-static {v4, p1, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 489
    const-string/jumbo v3, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 490
    .local v3, "addrUp20Path":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 491
    move-object v4, v0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v5, "root/application/0/3gpp_ims/public_user_identity_list/"

    invoke-static {v5, p1, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 492
    return-object v0

    .line 494
    .end local v1    # "addrPath":Ljava/lang/String;
    .end local v2    # "addrUp10Path":Ljava/lang/String;
    .end local v3    # "addrUp20Path":Ljava/lang/String;
    :cond_4
    const-string v1, "address"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 495
    const-string v1, "addresstype"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 496
    :cond_5
    const-string/jumbo v1, "root/application/0/lbo_p-cscf_address/"

    .line 497
    .restart local v1    # "addrPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v5, "root/application/0/lbo_p-cscf_address/"

    invoke-static {v5, p1, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 499
    const-string/jumbo v4, "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/"

    .line 500
    .local v4, "addrUp10Path":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 501
    move-object v5, v0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v6, "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/"

    invoke-static {v6, p1, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    :goto_2
    move-object v0, v5

    .line 503
    const-string/jumbo v5, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 504
    .local v5, "addrUp20Path":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 505
    move-object v6, v0

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v7, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    invoke-static {v7, p1, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    :goto_3
    move-object v0, v6

    .line 507
    const-string/jumbo v6, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 508
    .local v6, "addresUp20Path":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 509
    move-object v7, v0

    goto :goto_4

    :cond_8
    iget-object v7, p0, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string/jumbo v8, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    invoke-static {v8, p1, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    :goto_4
    move-object v0, v7

    .line 511
    .end local v1    # "addrPath":Ljava/lang/String;
    .end local v4    # "addrUp10Path":Ljava/lang/String;
    .end local v5    # "addrUp20Path":Ljava/lang/String;
    .end local v6    # "addresUp20Path":Ljava/lang/String;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-object v0

    .line 473
    :cond_a
    :goto_5
    const-string/jumbo v1, "readListFromMap: cannot read the param"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-object v0
.end method


# virtual methods
.method public readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/Boolean;

    .line 351
    move-object v0, p2

    .line 352
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 356
    :cond_0
    return-object v0
.end method

.method public readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Lcom/sec/ims/util/ImsUri;

    .line 415
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 419
    :cond_0
    return-object p2
.end method

.method public readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/Integer;

    .line 360
    move-object v0, p2

    .line 361
    .local v0, "ret":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 367
    goto :goto_0

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 369
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/Integer;
    .param p3, "min"    # Ljava/lang/Integer;
    .param p4, "max"    # Ljava/lang/Integer;

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 374
    .local v0, "ret":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    return-object v0

    .line 375
    :cond_1
    :goto_0
    return-object p2
.end method

.method public readListString(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readListFromMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/Long;

    .line 381
    move-object v0, p2

    .line 382
    .local v0, "ret":Ljava/lang/Long;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 390
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 394
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    return-object v0

    .line 398
    :cond_0
    return-object p2
.end method

.method public readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "def"    # Landroid/net/Uri;

    .line 407
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 411
    :cond_0
    return-object p2
.end method

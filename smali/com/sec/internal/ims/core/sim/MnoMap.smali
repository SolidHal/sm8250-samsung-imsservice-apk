.class public Lcom/sec/internal/ims/core/sim/MnoMap;
.super Ljava/lang/Object;
.source "MnoMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/MnoMap$Param;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MnoMap"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

.field private mPhoneId:I

.field private mRssNetParser:Lcom/sec/internal/ims/core/sim/RssNetParser;

.field private mTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    .line 555
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    .line 556
    iput p2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    .line 557
    new-instance v0, Lcom/sec/internal/ims/core/sim/CscNetParser;

    invoke-direct {v0, p2}, Lcom/sec/internal/ims/core/sim/CscNetParser;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

    .line 558
    new-instance v0, Lcom/sec/internal/ims/core/sim/RssNetParser;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/RssNetParser;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mRssNetParser:Lcom/sec/internal/ims/core/sim/RssNetParser;

    .line 559
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->createTable()V

    .line 560
    return-void
.end method


# virtual methods
.method public createTable()V
    .locals 12

    .line 563
    const-string v0, "MnoMap"

    const-string v1, "createTable: init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "netIdList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/sim/NetworkIdentifier;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mRssNetParser:Lcom/sec/internal/ims/core/sim/RssNetParser;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/RssNetParser;->getRssNetwokrInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 566
    .local v3, "rssNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    iget-object v4, v3, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    .line 567
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 568
    if-nez v1, :cond_0

    .line 569
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 571
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v3    # "rssNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 574
    :cond_1
    const-string v2, "from RSS : "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/CscNetParser;->getCscNetwokrInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 580
    .local v2, "cscNetInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/core/sim/CscNetwork;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/sim/CscNetwork;

    .line 581
    .local v4, "cscNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    const/4 v5, 0x0

    .line 582
    .local v5, "found":Z
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/CscNetwork;->mIdentifiers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 583
    .local v7, "cscNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    iget-object v8, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    iget-object v9, v7, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Ljava/util/List;

    .line 584
    if-nez v1, :cond_2

    goto :goto_2

    .line 585
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 586
    .local v9, "tableNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    invoke-virtual {v9, v7}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->equalsWithoutMnoName(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 588
    iget-object v8, v9, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/core/sim/CscNetwork;->setMnoName(Ljava/lang/String;)V

    .line 589
    const/4 v5, 0x1

    .line 590
    goto :goto_4

    .line 592
    .end local v9    # "tableNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    :cond_3
    goto :goto_3

    .line 593
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 594
    goto :goto_5

    .line 596
    .end local v7    # "cscNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    :cond_5
    goto :goto_2

    .line 597
    :cond_6
    :goto_5
    if-eqz v5, :cond_c

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTable merge: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/CscNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v6, 0x0

    .line 601
    .local v6, "merged":Z
    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/CscNetwork;->mIdentifiers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 603
    .local v8, "cscNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    const/4 v6, 0x0

    .line 605
    iget-object v9, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    iget-object v10, v8, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Ljava/util/List;

    .line 606
    if-eqz v1, :cond_8

    .line 607
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 608
    .local v10, "tableNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->contains(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 610
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "contains "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 610
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v6, 0x1

    .line 613
    goto :goto_8

    .line 615
    .end local v10    # "tableNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    :cond_7
    goto :goto_7

    .line 617
    :cond_8
    :goto_8
    if-nez v6, :cond_a

    .line 619
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add new networkd identifier: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v9, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    iget-object v10, v8, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Ljava/util/List;

    .line 621
    if-nez v1, :cond_9

    .line 622
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v9

    .line 624
    :cond_9
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v9, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    iget-object v10, v8, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .end local v8    # "cscNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    :cond_a
    goto/16 :goto_6

    .line 628
    .end local v6    # "merged":Z
    :cond_b
    goto :goto_9

    .line 629
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found Mno for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/CscNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v4    # "cscNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    .end local v5    # "found":Z
    :goto_9
    goto/16 :goto_1

    .line 632
    :cond_d
    const-string v3, "createTable: result"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method public getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "gid1"    # Ljava/lang/String;
    .param p4, "gid2"    # Ljava/lang/String;
    .param p5, "spname"    # Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 646
    .local v0, "netIdList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/sim/NetworkIdentifier;>;"
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "mnoName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 648
    return-object v1

    .line 651
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "simSubset":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "MnoMap"

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 654
    .local v4, "tableNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 655
    const/4 v6, 0x0

    .line 657
    .local v6, "count_x":I
    :goto_2
    :try_start_0
    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    if-eq v7, v8, :cond_4

    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 658
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x58

    if-ne v7, v8, :cond_2

    goto :goto_3

    .line 661
    :cond_2
    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 663
    iget-object v3, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 664
    goto/16 :goto_5

    .line 669
    :cond_3
    goto :goto_4

    .line 659
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 666
    :catch_0
    move-exception v7

    .line 667
    .local v7, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid subset - mnomap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", SIM:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v7}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 672
    .end local v6    # "count_x":I
    .end local v7    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    :goto_4
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 673
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 675
    iget-object v1, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 676
    goto/16 :goto_5

    .line 679
    :cond_6
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 680
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 682
    iget-object v1, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 683
    goto :goto_5

    .line 686
    :cond_7
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 688
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    .line 689
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 691
    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 692
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    invoke-virtual {p5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 694
    iget-object v1, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 695
    goto :goto_5

    .line 699
    :cond_8
    iget-object v5, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 700
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 702
    iget-object v1, v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 704
    .end local v4    # "tableNetid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    :cond_9
    goto/16 :goto_1

    .line 706
    :cond_a
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMnoName: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v1
.end method

.method public isGcBlockListContains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mccmnc"    # Ljava/lang/String;

    .line 637
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mRssNetParser:Lcom/sec/internal/ims/core/sim/RssNetParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/RssNetParser;->getGcBlockList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mRssNetParser:Lcom/sec/internal/ims/core/sim/RssNetParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/RssNetParser;->getGcBlockList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 639
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

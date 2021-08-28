.class Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;
.super Ljava/lang/Object;
.source "ConfigProvider.java"

# interfaces
.implements Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/ConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadRootAppParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/ConfigProvider$1;

    .line 769
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    return-void
.end method


# virtual methods
.method public readParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 7
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 773
    .local v0, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v2, "root/application/0/"

    invoke-static {v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 774
    .local v1, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    const-string v3, "home_network_domain_name"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 775
    const-string/jumbo v3, "private_user_identity"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 776
    const-string v3, "keep_alive_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 784
    :cond_0
    const-string/jumbo v2, "public_user_identity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 787
    const-string/jumbo v2, "root/application/0/public_user_identity_list/"

    .line 788
    .local v2, "addrPath":Ljava/lang/String;
    const-string/jumbo v3, "root/application/0/public_user_identity_list/"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    .line 792
    const-string/jumbo v3, "root/application/0/public_user_identity_list/0/public_user_identities/"

    .line 793
    .local v3, "addrUp10Path":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 794
    move-object v4, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "root/application/0/public_user_identity_list/0/public_user_identities/"

    invoke-static {v4, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .line 798
    const-string/jumbo v4, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 799
    .local v4, "addrUp20Path":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 800
    move-object v5, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "root/application/0/3gpp_ims/public_user_identity_list/"

    invoke-static {v5, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v5

    :goto_1
    move-object v0, v5

    .line 801
    return-object v0

    .line 803
    .end local v2    # "addrPath":Ljava/lang/String;
    .end local v3    # "addrUp10Path":Ljava/lang/String;
    .end local v4    # "addrUp20Path":Ljava/lang/String;
    :cond_3
    const-string v2, "address"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 804
    const-string v2, "addresstype"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 809
    :cond_4
    const-string/jumbo v2, "root/application/0/lbo_p-cscf_address/"

    .line 810
    .restart local v2    # "addrPath":Ljava/lang/String;
    const-string/jumbo v3, "root/application/0/lbo_p-cscf_address/"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    .line 816
    const-string/jumbo v3, "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/"

    .line 817
    .restart local v3    # "addrUp10Path":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 818
    move-object v4, v0

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/"

    invoke-static {v4, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v4

    :goto_2
    move-object v0, v4

    .line 824
    const-string/jumbo v4, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 825
    .restart local v4    # "addrUp20Path":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 826
    move-object v5, v0

    goto :goto_3

    :cond_6
    const-string/jumbo v5, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    invoke-static {v5, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v5

    :goto_3
    move-object v0, v5

    .line 832
    const-string/jumbo v5, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 833
    .local v5, "addresUp20Path":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 834
    move-object v6, v0

    goto :goto_4

    :cond_7
    const-string/jumbo v6, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    invoke-static {v6, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2700(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v6

    :goto_4
    move-object v0, v6

    .line 836
    .end local v2    # "addrPath":Ljava/lang/String;
    .end local v3    # "addrUp10Path":Ljava/lang/String;
    .end local v4    # "addrUp20Path":Ljava/lang/String;
    .end local v5    # "addresUp20Path":Ljava/lang/String;
    :cond_8
    return-object v0

    .line 777
    :cond_9
    :goto_5
    const-string/jumbo v3, "root/application/0/"

    .line 778
    .local v3, "rootAppPath":Ljava/lang/String;
    const-string/jumbo v4, "root/application/0/3gpp_ims/"

    .line 779
    .local v4, "rootAppUp20Path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 781
    move-object v2, v0

    goto :goto_6

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/application/0/3gpp_ims/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    :goto_6
    move-object v0, v2

    .line 782
    return-object v0
.end method

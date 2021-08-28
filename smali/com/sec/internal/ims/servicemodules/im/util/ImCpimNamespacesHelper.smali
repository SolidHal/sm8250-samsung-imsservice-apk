.class public Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;
.super Ljava/lang/Object;
.source "ImCpimNamespacesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "imCpimNameSpaces"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 14
    .local v0, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    if-eqz p1, :cond_0

    .line 16
    const-string v1, "MD"

    const-string v2, "direction"

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "extractedDirection":Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 18
    .local v2, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v2, :cond_0

    .line 19
    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->convertToImDirection(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    .line 22
    .end local v1    # "extractedDirection":Ljava/lang/String;
    .end local v2    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_0
    return-object v0
.end method

.method public static extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2
    .param p0, "imCpimNamespaces"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 33
    if-eqz p0, :cond_0

    .line 34
    const-string v0, "maap"

    const-string v1, "Traffic-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static extractRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2
    .param p0, "imCpimNamespaces"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 40
    if-eqz p0, :cond_0

    .line 41
    const-string v0, "Korea-RCS"

    const-string v1, "Reference-ID"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static extractRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2
    .param p0, "imCpimNamespaces"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 47
    if-eqz p0, :cond_0

    .line 48
    const-string v0, "Korea-RCS"

    const-string v1, "Reference-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2
    .param p0, "imCpimNamespaces"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 54
    if-eqz p0, :cond_0

    .line 55
    const-string v0, "Korea-RCS"

    const-string v1, "Traffic-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mAlwaysSendSubscriberId:Ljava/lang/Boolean;

.field private mDeleteAllTokens:Ljava/lang/Boolean;

.field private mTargetSubscriptionId:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    .line 813
    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    .line 814
    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-void
.end method

.method private addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "vs"    # [Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "indx"    # I

    .line 854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 856
    aput-object p4, p2, p5

    .line 858
    return-object p1
.end method

.method private getParamCount()I
    .locals 2

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "c":I
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 849
    :cond_2
    return v0
.end method


# virtual methods
.method public build()Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    .locals 11

    .line 818
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->getParamCount()I

    move-result v0

    .line 819
    .local v0, "paramCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 820
    new-instance v2, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    invoke-direct {v2, v1, v1, v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v2

    .line 823
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    .line 824
    .local v2, "vs":[Ljava/lang/String;
    const-string v9, ""

    .line 825
    .local v9, "s":Ljava/lang/String;
    const/4 v8, 0x0

    .line 827
    .local v8, "i":I
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 828
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    const-string/jumbo v6, "subscriptionId"

    move-object v3, p0

    move-object v4, v9

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move v8, v10

    .line 830
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 831
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .restart local v10    # "i":I
    const-string v6, "alwaysReturnSubscriptionId"

    move-object v3, p0

    move-object v4, v9

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 830
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_2
    move v10, v8

    .line 833
    .end local v8    # "i":I
    .restart local v10    # "i":I
    :goto_0
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 834
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "deleteAll"

    move-object v3, p0

    move-object v4, v9

    move-object v5, v2

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->addParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 836
    :cond_3
    new-instance v3, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    invoke-direct {v3, v9, v2, v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v3
.end method

.method public setAlwaysSendSubscriberId(Ljava/lang/Boolean;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 839
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mAlwaysSendSubscriberId:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeleteAllTokens(Ljava/lang/Boolean;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 841
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mDeleteAllTokens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;
    .locals 0
    .param p1, "i"    # Ljava/lang/Integer;

    .line 840
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-object p0
.end method

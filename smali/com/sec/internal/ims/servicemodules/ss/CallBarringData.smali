.class public Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.source "CallBarringData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;-><init>()V

    return-void
.end method

.method static makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 2
    .param p0, "condition"    # I
    .param p1, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 35
    .local v0, "temp":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeInternalRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)V

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 37
    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 1

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 53
    .local v0, "clone":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->cloneSsDataInternal(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;)V

    .line 54
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v0

    return-object v0
.end method

.method copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .locals 4
    .param p1, "ssrule"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 43
    .local v0, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 44
    .local v1, "temp":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 45
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-super {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->copySsRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 48
    return-void
.end method

.method getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 2
    .param p1, "condition"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->findRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 25
    .local v0, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    return-object v1
.end method

.method bridge synthetic getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p1

    return-object p1
.end method

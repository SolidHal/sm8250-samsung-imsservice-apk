.class public Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.source "CallForwardingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    }
.end annotation


# instance fields
.field replyTimer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;-><init>()V

    return-void
.end method

.method static makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 2
    .param p0, "condition"    # I
    .param p1, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 35
    .local v0, "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->makeInternalRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)V

    .line 36
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 37
    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 2

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 53
    .local v0, "clone":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->cloneSsDataInternal(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;)V

    .line 54
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 55
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

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

    .line 4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v0

    return-object v0
.end method

.method copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .locals 4
    .param p1, "ssrule"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 43
    .local v0, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 44
    .local v1, "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 45
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 46
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-super {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->copySsRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 48
    return-void
.end method

.method public getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 2
    .param p1, "condition"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->findRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 25
    .local v0, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    return-object p1
.end method

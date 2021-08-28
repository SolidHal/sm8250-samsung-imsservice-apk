.class abstract Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.super Ljava/lang/Object;
.source "SsRuleData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    }
.end annotation


# instance fields
.field protected active:Z

.field protected rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    .line 22
    return-void
.end method

.method static makeInternalRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)V
    .locals 2
    .param p0, "temp"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .param p1, "condition"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;

    move-result-object v0

    return-object v0
.end method

.method cloneSsDataInternal(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;)V
    .locals 2
    .param p1, "clone"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;

    .line 89
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    iput-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 91
    .local v1, "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 92
    .end local v1    # "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method abstract copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
.end method

.method copySsRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .locals 2
    .param p1, "original"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .param p2, "copy"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 78
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    iput-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 80
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 81
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 82
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 83
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 84
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 86
    return-void
.end method

.method findRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .locals 3
    .param p1, "condition"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 28
    .local v1, "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 29
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    return-object v1

    .line 32
    .end local v1    # "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    :cond_0
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
.end method

.method isExist(I)Z
    .locals 3
    .param p1, "condition"    # I

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 68
    .local v1, "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-ne v2, p1, :cond_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    .end local v1    # "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z
    .locals 3
    .param p1, "condition"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 58
    .local v1, "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 59
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    .end local v1    # "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .locals 4
    .param p1, "remote"    # Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 46
    .local v1, "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void

    .line 52
    .end local v1    # "r":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    :cond_0
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

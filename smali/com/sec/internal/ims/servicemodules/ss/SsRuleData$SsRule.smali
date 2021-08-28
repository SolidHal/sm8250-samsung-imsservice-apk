.class Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
.super Ljava/lang/Object;
.source "SsRuleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SsRule"
.end annotation


# instance fields
.field conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

.field ruleId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 14
    return-void
.end method

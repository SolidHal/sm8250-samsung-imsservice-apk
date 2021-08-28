.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReasonHeader"
.end annotation


# instance fields
.field private final mCode:I

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mCode:I

    .line 85
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mText:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mCode:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mText:Ljava/lang/String;

    return-object v0
.end method

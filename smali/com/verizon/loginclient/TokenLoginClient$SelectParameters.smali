.class Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
    }
.end annotation


# instance fields
.field private final mSelectParams:[Ljava/lang/String;

.field private final mSelectString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "selectString"    # Ljava/lang/String;
    .param p2, "selectParams"    # [Ljava/lang/String;

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectString:Ljava/lang/String;

    .line 783
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectParams:[Ljava/lang/String;

    .line 784
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lcom/verizon/loginclient/TokenLoginClient$1;

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSelectParams()[Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectParams:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectString()Ljava/lang/String;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectString:Ljava/lang/String;

    return-object v0
.end method

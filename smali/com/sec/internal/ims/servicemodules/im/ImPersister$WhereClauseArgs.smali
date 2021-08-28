.class Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;
.super Ljava/lang/Object;
.source "ImPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereClauseArgs"
.end annotation


# instance fields
.field private final mWhereArgs:[Ljava/lang/String;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;

    .line 1516
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereClause:Ljava/lang/String;

    .line 1512
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereArgs:[Ljava/lang/String;

    .line 1513
    return-void
.end method


# virtual methods
.method getWhereArgs()[Ljava/lang/String;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method getWhereClause()Ljava/lang/String;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereClause:Ljava/lang/String;

    return-object v0
.end method

Velocity Follow Up 2
Velocity Follow Up 2-20260617_161206UTC-Meeting Recording
June 17, 2026, 4:12PM
46m 18s

Espinosa, Jaime   0:07
It's one of us.

Byadagi, Srinivas   0:10
Can you hear me? Yeah.

Singh, Vishuka   0:31
OK, so we meet again, so...

Espinosa, Jaime   0:34
Okay, let me try, let me, yes, I can. Okay, record, transcribe, stop recording, stop, wait. Okay, I'm looking for...
I stopped recording. I mean, I think it's already been recorded. Just one second.

Byadagi, Srinivas   1:01
Yeah, it's recording. It's recording, I mean it's recording.

Espinosa, Jaime   1:02
Yeah, yeah, it's already recorded, yeah, because it's start recording from the from the start, so...

Singh, Vishuka   1:08
Yeah, so we are dealing, just a quick disclaimer, I'm still a student at this, so if there is a slight mistake, please forgive. So we will begin with what is accruals. The first part is like whenever there is an expense occurred within a particular time period.

Espinosa, Jaime   1:08
Awesome.

Singh, Vishuka   1:28
To keep the books clean and show the respective time period, like the expense is from that particular time period, we book an accrual.
Now, to begin, all the expense, you have already, what to say, you have already purchased some item, you have sent a list, and you have received the goods also. However, to pay for the goods, you will require an invoice. So, against...

Espinosa, Jaime   1:50
Uh-huh.

Singh, Vishuka   1:57
that goods received, you have not got the invoice, but you have to show it as an expense for that particular period. What you will do in that case, you will book a accrual. So this is what our first section says, that expense has incurred and the invoice is not yet received.
Expense still must be recorded, which is why we created accrual. So there is a little snapshot of the accounting principle. So how does, what is PO based accrual?

Espinosa, Jaime   2:21
Mm.

Singh, Vishuka   2:32
From the perspective of finance, you create a list of the items that you want to purchase. For that, you create a purchase order. Now, these items, materials, list may or may not be present, so depending which is why purchase order is an initial list and not like we do not follow it blindly. We require a...
goods received. So the vendor has given you some goods. It will contain the exact number of items that you have received at your place.
No.
Since you have received the goods but you have and you have incurred the expense again, you have not received the invoice yet, you will count it as an accrual.
For example, the expense incurred against a cloud service delivered happened on 28 March.
And the invoice received on 15th April, and the month end activity will be performed on 31st March. So, till this period, like for 28 to 31, you need to create an accrual in the system. I will tell you the exact entry in the next slide, so...
For that particular time, what you will do is you will create an accrual and on 31st March, reverse it.
So as to make make it look like make your books clean. This step will be clear in the next slide.
So, standard PO life cycle I have explained. Accrual opportunity, you can, it's like self-explainable, like the purchase order received, good received, month end has come. And now you have to create an accrual for it. And before the next month start on the last state of the.
Period end, you have to create a reversal document in the next period. If you receive an invoice, then it is not your not in your accrual list.
So when do we paste accrual occur? When do PO based accrual occur? This will give you the insight. It's a very generic slide. It will give you the perspective of the finance. Go through it. It is mostly self-explanatory. I'll move on to the next one.
So this is where I will be able to explain a little. So what happens is when your period end comes and the good received is there, but the invoice is missing, what you will do is you will debit the expense amount, you will create an entry. You have to check those T codes, how to create them. You have to create an entry in the SAP system where your expense amount account is.
Is debited, and your liability account is credited.
Now, this is done. For example, if you are getting Erick doing the expense in the month of March during the month end, what you will do is you will do this posting.
To show that, okay, I have not received till 31st March, let me put this as an expense in that month. In the beginning of the month, next month, you will reverse this posting because you cannot let that posting trickle down to the next month, otherwise, because you are still...
get to get the invoice. It's just for the bookkeeping purpose so that there is clarity that the expense belongs to that period. So how reversal happens is your liability is again debited and your expense account is again credited.
Sood?
This will clean the books from scratch. Now, your accrual can be replaced. The cycle can keep on continuing for the different time period. It will stop the minute you and any invoice arrives, so you do not have to book the accruals then, for example.
You have received the invoice. What will be the posting you will do in the system? Your expense account will be debited. Your vendor liability will be credited. So this is where the period entry starts. Now, once your vendor has given you the payment, you can settle this also.
Your vendor liability, your accounts payable will be debited, and your bank account will be credited. All the key takeaways I have mentioned over here, for example, accruals is posted at period end when invoice is missing. System automatically reverses the accrual in the next period.
Invoice posting replaces the accrual entry. Payment clears the vendor liability and ensures accurate expense recognition in the right period.
So this is how in FI it happens. Now there are a lot of manual processes that each point of time happen.
I'm not going to include them because that is available as in what to say as a description inside in theory in this slide. But understand that what we are working with. Our scope is limited for this only. Period and accrual posting, automatic reversal, invoice posting, vendor payment and financial close completed. This is the entire cycle.
Seo.
Give me a minute, so that is all.
Unfortunately, I was not able to remove this particular section which says AI prioritization. Consider is it crossed and the confidence scores are also crossed. We are not taking them into consideration.
So we are going to come to the AI driven PO accrual use case. What we are doing.
At our level, how we have identified the use case related to that accrual? So, in our case, there are six use cases we are following, out of which two do not come to the work list. Reason I'll give you once, I will explain.
Sood.
Why do we need the current business challenges are large volume of transactions but they do not have any tie up. Manual review is required. There is a huge chance that the higher value accruals are missed from the entries.
It is majorly experienced driven, so in case proper training is not provided, it will hinder how it reflects in the books.
Again, if it is not good in the books, it will be an audit issue, which will lead to slower month-end close.
So our solution approach is...
From the data bricks, we will get all the data from the SEC and put that into data products. We will calculate the exposure, find out the root cause, put AI prioritization and recommendation, and we will give the insight at the SEC dashboard level. A little overview about the data products being used.
One is your purchase order, header line items are some of the fields that are coming in the purchase order data product. Similarly, in general entry, it is most closely tied up to your table, AC Doka in SAP system. Your goods received is MSEG.
Similarly, your supplier invoice tables are RB, KF, RSEG. These are nothing but you can say reflections of the same data. Suppose there is a SAP table, AC Durocher. It will have a serious view or it could have multiple serious view.
All will be combined to create a single data product that is journal entry.
So similarly, there are multiple data products in the data bricks. Now the five, 6 use cases we have identified are, first is missing invoice. What happens is you have received a good, you have created a purchase order. Against that, you have received the goods also.
However, there is no IR exist. I mean, you have not received any invoice against those goods received. The minute you say that there is no invoice received, it means some payment is due from your side and this has to, some expense is due from your side and that will be marked the month it was created.
So, what we ideally what we do is that we try to catch the oldest GR item related to the purchase order, which means the first goods received against a PO will be counted for taking into accountability.
The period which it belongs to.
So this is 1 definition we can think about. This will be useful later.
So, the outcome will be missing invoice, so our logic is developed in the sense that it will, from one to seven, it will check first come first services. The minute any of the logic is satisfied, it will the algorithm will exit from it, only will continue further if...
Till the end.
The second one is cutoff accruals. Unfortunately, I was not able to change the name here. It is cross period accrual. Now what happens is accrual is usually booked when the GR and the IR posting dates have difference, like I showed you in the first slide. There was a, the invoice was created, goods received was created in the month of March and you got the.
invoice on the month of April. In that particular sense, when the goods received has a smaller date as compared to the invoice posting date, in that sense, we always create book in accrual. In case the good received date is greater than the Iyer posting date, then that is not a explainable.
scenario in the sense you cannot have an invoice before you have received the goods and even so if it might happen, I'm not sure if it can happen in exception scenario, but it will not qualify for the approval. Similarly, once a work list we are talking about, once the items that we have identified do not satisfy these first two conditions.
We will move on to the third one, which is quantity variance partial GRIR. You requested for 100 items in your purchase order. You got 50 in your goods received.
However, you received the invoice for only 20 items. So your goods received quantity is greater than your invoice received quantity. You are still expecting that 20 or 30 remaining invoice you will get. Now always remember when the goods received quantity is greater than IR.
quantity only then we will book a accrual. In the vice versa case, it is not true. Reason is that if you get invoice for more number of goods as opposed to the goods you have received, it will be a overbilling scenario.
Having said that, if the work list item does not qualify for these three, it will be the logic will move on to the 4th one, which says price variance. Now you have checked, okay, the quantity matches and the amounts are not matching.
So in that particular case, you will create another case which is known as price variance and it will be marked for the accrual. Again, overbilling in this scenario is not taken into consideration. You will only always pay for the goods received and not overpriced or over quantity.
At the...
The comparison level.
We have open payable now; your invoice exists, but it is not paid. For example, the GR quantity and the IR quantity are equal. This is 1, your GR amount and IR amount against a purchase order.
is also equal, meaning the Siva reversal has happened also in the system. That is automatic process at the end of, at the beginning of each month. Now you have received an invoice for it. So since you have received an invoice, it is no longer the concern of the accrual.
It is a payable. It has turned into something else, like you have to pay money to the vendor. So again, this five will not be included in the work list. This was discussed by Siva and this was the latest cross out from the work list. Now in case you are able to identify some conditions like the GR is equals to IR.
you identify an invoice and it has a clearing date mentioned, which means there is, it's open payable amount is 0. Then in that particular case, it is fully matched. Now there are ghost scenarios also, like there is some missing data or there are human errors in the data or some.
ABAP extensions that might have come like uncertain in case that we have not included. We have only included two.
Price variance. So these are the four use cases we are working on. Ideally, consider that there will be some unclassified scenarios also. For example, your incorrect posting also will be there. Something related to that.
Coming to the next part, your AI prioritization risk scoring model, we have not included this. Unfortunately, since it's AI created, I was not able to exclude this, which means the work list category. These are the logics that we are following. For example,
Do not take it with a pinch of salt. This might also not be correct. So it is better that we move on to the next slide and not worry about these two.
So this is our solution, like how we are working and how the algorithm at the databricks level is expected to run.
So period end is approaching. The data products we are taking into considerations are, we will load the data from these below, data products, general entry, purchase order, purchase order items, supply invoice, company code. Then what we will do is anytime you fetch your data, you have to perform some kind of data mining operations, keeping on the.
relevant data. So your first unique key will be comprising of company code, purchase order, purchase order item, supplier and vendor should not be null. Apart from this, there is one more unique key that is not mentioned over here. That is your accounting document number. So all these five will create a data set that will only contain the purchase order items.
In the SAP system, where there will be multiple documents.
To identify the good receipts from the invoice receipts against a purchase order, we have taken up the logic based on the document type.
So your document type for GR and your document type for IR. Give me a minute.
Your document type for GR will be W8WE and signed for the IR will be RE.
So, we are on to the step of exposure calculation. For example, identify open GRIR positions, the signed GR amount slash quantity, signed IR amount slash quantity. What do we mean by that? So, against if you have like these unique...
Unique.
Key for these with the combination of all these variables, you will identify like each key will have two documents, one is with the same document type, one is your goods received, but sometimes what happens is at the end of the month there will be a auto reversal posting, so there will be some negative entries.
Against the good received and positive entries against the good received, so we cancel them out and the remaining amount left is your signed amount, which means your total goods received amount, removing the reversals, because once the reversal and the month end posting has happened.
They are no longer our concerns. Following the same logic, IR documents. Your IR documents are nothing but your invoice received documents. They are also, sorry, this is not IR, yeah, IR document is nothing but RE document type. So similarly, based on the sign, there will be...
debit and credit indicators against each of these document items and you will be able to identify the amounts. Similarly, you will calculate the quantity also based on the debit credit indicators. You will be able to identify, okay, this amount was reversed, this particular quantity was reversed. So you should get the exact amount each time.
Once that is identified, you will calculate, like, what is my exact open exposure open amount that I have to pay? That will be signed goods receipt amount minus your signed Iyer amount, so that is your exposure. Now, how do we bifurcate in the algorithm? So...
we will take a decision. If GR amount minus Iyer amount is greater than 0, then only we will proceed further. If it is smaller than 0, then the algorithm will exit. For example, if your, what to say, if your goods received amount is greater than your invoice received amount,
Then, in that particular case, ohh sorry, if your good receive amount is less than your signed Iyer amount, in that particular case, that is the case of over billing, and that we do not include in the accruals. So, if that is true, then we will.
come inside the calculate days open. So your days open will be equal to your current date minus oldest open GR posting date against that purchase order.
So, having said that, once the algorithm has calculated these variables at particular particular points, like I showed you, it will calculate the exposure at this point, it will calculate the days open against each PO at this point, it will check which work list category it will belong to, so that is nothing but.
Classification.
Of...
The language is a little casual, like first metric wins, whichever, once the work list items are filtered based on this logic, they will again check how to proceed further. So once it has come here, it will check, does the invoice exist?
Yes, if the invoice here, it is an issue. If invoice does not exist, it will come to the missing invoice and this rule will be applied. For example, your apply rule will be exposure. This was a generic, it is same for all of them. So no need to be concerned, but I'll share once what we have taken into consideration.
For the work list item, where the exposure is greater than dollar 50,000 and days open greater than 30, it will be post. For the review, post exposure greater than dollar 20,000 or days open greater than forty-five, that will go under review. Why it is not posted, it will be a concern. Observe where exposure is greater than...
of 5000 and the days open amount is between 15 to 30. If there is for the remaining there is no action. So these are how we have identified in which category any work list item will go.
So, again, a little bit of incorrections are there in this.
Sheet, but anyway, we will proceed. For example, this GI period is less than Iyer period and over here it is written as cut off accrual. It is nothing but in our, if we match it to our case and the AI driven dashboard, it is cross period accrual. In this, what happens is you have received the invoice, but it is of a different accounting period.
In that particular sense, if you have received it in future, again, you will have to create the accrual for it.
And once the accrual is identified, the RCA will say that this is a cross-period work list item, and with the help of Databricks, we will be able to give a slight definition also, based on the actions, it will categorize into post review, etc. Similarly, the quantity difference.

Espinosa, Jaime   23:42
Yeah.

Singh, Vishuka   23:53
Why we do not choose the other case? I've already explained, like in case of overbilling, et cetera, we will not proceed to the accrual.
Again, if you identify a quantity variance, the algorithm will say, OK, this has happened.
Then you will go inside this rule. This will remain same for all of them. There is a little mistakes in this, but these do not prevent us from understanding the logic. Similarly, you will identify the price variance, the quantity is same, the amounts are same. Then you will again bifurcate, mark the root cause analysis against that item as price variance.
and apply the similar rule to it and categorize the action against it. Now, again, these last three items are omitted, so I will not take them into consideration. For example, if your open payable is greater than 0, it means that you have received an invoice, again, not a contender for.
accrual, fully matched and paid, again not a contender for accrual and all conditions not met, then it is unclassified. We have not included it in the work list now. However, when we will go live on the connection, there we might have to get this unclassified online. This could be a...
Future step.
So our use case is very.
specific for the purchase order only. So this is all I could explain for now. Any questions that I can take up, this is, I tried to simplify it.
Yeah.

Espinosa, Jaime   25:34
Nope, that mean, uh, great job for some personal.
Most of it, yep, I like most of it. I only have a couple of questions. Well, just one question for starting like I did yesterday. Where, I don't know, it might be also director for Srinivas or for some of you could help me understanding what is the machine learning in this case method or.

Singh, Vishuka   25:39
Oh, thank you.
Mhm.

Espinosa, Jaime   26:00
not sure what are we using for machine learning to apply on this. I saw something, but I would like to get a little bit more detail on it.

Singh, Vishuka   26:12
So there are two parts of that from database perspective. One is machine learning in that what you, one is a basic calculation that we have used for the hack phase, like a basic formula, like algorithm usage, like how will you classify the workloads into different categories, like 4 in our case.

Espinosa, Jaime   26:16
Mhm.
And.

Singh, Vishuka   26:32
The second one is the machine learning algorithm use case that we intend to use for the build phase. In that, what happens is you provide it with a certain set of training data. The algorithm notices the pattern. Now, this pattern recognition method is what you call your linear audio regression method, which Srinivas will explain after me.

Espinosa, Jaime   26:39
Mhm.
Mhm.
Yeah.

Singh, Vishuka   26:54
So based, once the pattern is recognized, it will prompt you for the next set of the data, testing data, it will prompt you the values against it. So that is how it has happened. Currently, I'm unsure which method we are using. Maybe Srinivas can make it clear for us.
So, over to you, Srinivas.

Espinosa, Jaime   27:18
Thank you, Vishuka.

Byadagi, Srinivas   27:18
If.
Yeah, so just to clarify, for the hack phase, we haven't used any ML as of now, but for the build phase, so since we are going with anomaly detection, there the ML will come into the place. Okay, so we'll be using either we'll be using...

Espinosa, Jaime   27:27
Yep.
Mhm.

Byadagi, Srinivas   27:42
a classifier like either it will be, I'm going, I'm trying to like find the best model for it, but for now I think we'll be going with the isolation forest.

Espinosa, Jaime   27:55
Isolation forest, okay.

Byadagi, Srinivas   27:56
Yeah, but since, like, I'm training as of now, I am thought I thought of training on the already like transformed the data instead of like the base base tables, but I don't know that approach will give us, I mean, that's the best approach.

Espinosa, Jaime   28:08
Okay.

Byadagi, Srinivas   28:17
No, I would say, as of now, like I, but...
Going forward, like, once I have trained the model and see how the data is coming, yeah, I might switch to RL instead of getting the data directly from the silver tables, I'll be getting the data from the raw tables itself, like the CDS views, then decide, like, how it works.

Espinosa, Jaime   28:25
It works. Okay.

Byadagi, Srinivas   28:41
Or else, like, again, that's the one one thing, and the other.
Yeah, the other M.L. like opportunities were like still we are we are in I had to finalize the other one I think Vishuka and myself are discussing is something related to.
One second, it was a board.
Start your predicted period end accrual, something which will be using a ML model there, like again.

Espinosa, Jaime   29:17
Right, thank you.

Byadagi, Srinivas   29:18
Yeah, basically, like, what will G.R.I.R. accrual total be at a period close before all, I mean, all invoices are arrived, right? So, that's the one we thought of, and...

Espinosa, Jaime   29:32
Okay.

Byadagi, Srinivas   29:33
Yeah, I think mostly two of KPI should be coming from the algorithm. I mean, MLML one is the anomaly and the other one is this, but we haven't finalized it on this second one.

Espinosa, Jaime   29:38
Ohh.
OK, is that all Srinivas? Sorry.

Byadagi, Srinivas   29:55
Yeah.

Espinosa, Jaime   29:56
Okay, awesome. First of all, thank you. Great job, Vishuka. Thank you, Srinivas. Also you, Shaziya. Yes.

Byadagi, Srinivas   30:01
And we should.
Yeah, one more question. I saw somewhere like data products there after data bricks.

Singh, Vishuka   30:15
Yeah, it is like AI. AI has some errors I confess over there. Yeah. No, yeah, which is why. I was just grateful for the representations. Like I was worried to get the entries right. That was important.

Byadagi, Srinivas   30:16
No.
Okay, okay. I was a little confused.
Yeah, yeah, it was it was good, actually, though all the visuals are good.

Singh, Vishuka   30:35
Yeah, thank you. So 100% accuracy I tried, but I was not able to achieve in this.

Byadagi, Srinivas   30:42
And that happens once we create, right, like using AI, like the second time when we try to edit that same, it's messed up actually. Every time it happens with me as well, yeah.

Singh, Vishuka   30:44
Yeah.
Yes, yes, I agree.

Espinosa, Jaime   30:55
Oh.

Singh, Vishuka   30:57
The same result is not achieved.

Espinosa, Jaime   30:59
So one question, Srinivas, if I understanding, okay, so are you using, we are using any kind of algorithm for machine learning to catalog information from one of the...
Layers from, in this case, data bricks that I ingestion is that.

Byadagi, Srinivas   31:18
For hack phase, we're not using, but yeah, in the build phase.

Espinosa, Jaime   31:20
No, I...
I do understand, I mean, I mean, I'm talking over all the use case.

Byadagi, Srinivas   31:27
Overall, the use case, I would say, like, yeah, the algorithm, I say, like, isolation of forest one, I said, right, the just now I mentioned.

Espinosa, Jaime   31:33
Yeah.

Byadagi, Srinivas   31:35
Uh.
What is that? One second.

Espinosa, Jaime   31:41
Yeah, what I'm trying to put in a nutshell is that my understanding from what are you saying, we are using machine learning algorithm in this case for data categorization, that we are getting some data sourcing, we are getting a trained data set versus a test data set.

Byadagi, Srinivas   31:50
Yeah.

Espinosa, Jaime   32:00
And we want to train this algorithm to, I don't know, categorize or classify the information we are ingesting in order for us to be able to use it into both the showing as we already want it. Something like that. I'm trying to understand. That's for me.

Byadagi, Srinivas   32:18
Yeah, the isolation, what we are doing, like, basically we are trying for accrual, right? If you use the isolation forest, that's the algorithm where, like, it will detect based on the...

Espinosa, Jaime   32:27
Yeah, OK.
Okay, okay, okay, now I'm getting it.

Byadagi, Srinivas   32:36
Good, like there will be a different.
scores or like parameters, okay? For example, estimator will be there, like, or like something like random state. So without any like labels required, like, we would be able to define that anomaly, detect those anomalies.

Espinosa, Jaime   32:43
Mhm.
Yeah.
Oh, okay, okay.

Byadagi, Srinivas   33:00
Well, that's what, like I'm figuring out whether should I directly apply that on the silver tables that we already performed the transformations, or I mean, basically, I what I mean like should I train the model on just the silver layer tables, or like should I train the model from the using the base tables, so that's what I'm trying to figure it out.
Todd.

Espinosa, Jaime   33:21
Okay, awesome. Yeah, so my understanding is correct. So, because there are three main points we have to take in consideration for every for this project is the first one is to develop a use case that can make it to the customer. We we already know that, so that's why we select this one.
The second one is also to make sure that we are, we are not supposed, we have to develop this use case into this pretty specific technology framework or stack that is, in this case, regarded SAP, also the...
Data bricks usage, or most of it is the Business Data Cloud that comprehends these three tools: Data Sphere, Data Bricks, and SAC, right? And the third one is the usage of, in this case, the AI or machine learning. So, these are the three points to considerate. So, I just want to understand.

Byadagi, Srinivas   34:11
Yes.
Yeah.
Thews.

Espinosa, Jaime   34:23
Where, not when or how, where are we using the machine learning? But yeah, thank you. And now I do understand most of it, because I wasn't sure where I do understand about machine learning at the different algorithms, and well, we have to get data ingestion, data set creation, and...
the ways of training data sets and testing data sets and finally just get into, well, see if it's training, if it's correct, well, getting the error, we don't have any error, something like that. Now that you're explaining where are we using the machine learning, it's more clear to me.
Thank you.

Byadagi, Srinivas   35:02
Yeah, so the other metrics, it will be like predicted period and accrual. We thought of going with this as well, but I think we have to discuss. I think Vishuka said like she will be doing one one more one more time research on this, if we are like able to go ahead with in this or not, like whether this will.

Espinosa, Jaime   35:03
Ah.
Mhm.
Mhm.

Byadagi, Srinivas   35:24
provide any value or not based on that, we'll be going with this as well. I think once we discuss with Siva.

Espinosa, Jaime   35:26
Mm-hmm.
Okay, great, great. I think that is great. I've been repeating myself and stuff and something like that for me to make myself, if I'm, for you to have the perspective, if I'm understanding. So that's why I'm asking A lot. I mean, say, hey, is this correct? But it's for me.

Byadagi, Srinivas   35:33
Yeah.

Espinosa, Jaime   35:50
It's not that I do not understand you, it's that I'm not sure if I do understand it correctly. So just forgive me. It's apologies. It's not my intention to repeat myself. It's only for you to, hey Jaime, you're not wrong, you're not correct there. You run there, you understand this something else and get into the clarification.

Byadagi, Srinivas   35:57
Yeah.

Espinosa, Jaime   36:10
That's why I like to repeat and ask all this stuff, yeah, because also I've been studying about machine learning, and that's why I'm asking some of this stuff, but you know much more than me. Thank you. So, the only thing I can request for you to have in consideration.

Byadagi, Srinivas   36:11
Yes, yes.
News.
Yeah.

Espinosa, Jaime   36:29
Also, it's these that we already understand about the use case usage and some have to present it. Good. Second one, we are already, well, this is from the beginning, we are already using the BDC technology stack, correct? And the third one is to make like, because this uses this case.
Case to be presented, it usually won't be for anybody that it is like technical or to know very much about SAP nor finance, so try to present it as simple as possible, right? And when we talk about machine learning...
Well, it's kind of a little bit hard because you, Srinivas, you may understand very much, and I do understand some of it, but try to present it to, well, regular people who do the daily daily work and you try to explain about, yeah, we have this algorithm and we have testing data and we have these training data. Say, what are you talking about?
So, is is try to...

Byadagi, Srinivas   37:33
Okay.
Understood.

Espinosa, Jaime   37:36
To show this feature that has to do with machine learning in a pretty simple way, you know, for when we present this use case, say, okay, we are using this algorithm for machine learning that does this, does Das, using these data that come from here.
And we get, when we wrangle this data through the algorithm, it is trained for these, and he will set, well, no, he will give us, it will give us this required output. Now we present this as functional output, but...

Byadagi, Srinivas   38:11
Yeah.

Espinosa, Jaime   38:12
Excellent job.

Byadagi, Srinivas   38:12
And also, the yeah, other other one other KPI is like the one which you guys posted here, this one like unbooked early exposure index, so this can be also achieved using ML this KPI, so.

Espinosa, Jaime   38:17
Mhm.
Okay.
Great. Yep.

Byadagi, Srinivas   38:33
Yeah.

Espinosa, Jaime   38:35
At the end of the day, it doesn't matter whichever KPI you select, you'll be asking too, because I do not understand about book liability exposure index. I'm not sure what is that. I'll read it. But it is finance, I think it's finance verbiage. It takes me a little bit while to understand what is that.

Byadagi, Srinivas   38:46
Yeah.
M.

Espinosa, Jaime   38:56
But, yeah.
OK with it.

Byadagi, Srinivas   38:58
Looks.
But.

Espinosa, Jaime   39:02
Great, Vishuka, thank you very much. This is a great job. I think you're still editing for the final version, right?

Singh, Vishuka   39:05
Thank you.
Yeah, the hack phase, so that will remain as is. I'll just tweak of two, three lines here and there just to include the latest version, so...

Espinosa, Jaime   39:18
Okay.

Singh, Vishuka   39:24
Yeah.
Mhm.

Espinosa, Jaime   39:43
To myself, to understand, I do understand. Let me put it in a nutshell: it's something that you purchased already in the present, but still cannot record it into the system, right? But you will be able to record it in the future, but since it is in the future for us, I mean for us company.

Singh, Vishuka   39:49
Yeah.
Yes.

Espinosa, Jaime   40:04
we need to have a tracking, a control for that expenditure, but in the present. So we can have proper financial records. So that's why we create these accruals that is an amount of money regarding to item, service, whatever.
That will be in recorded in the future, but we have paid right now, and we have to make sure that we have the proper financial record, but we do not have like an invoice or a proper or right document that can tell us.
This is it. Something like that. Okay. Okay, yeah. And I still, even though I can explain it, it's like busting in my head, wandering around, saying, okay, now I was able to explain it, but still doesn't get it.

Singh, Vishuka   40:46
Yes, yes, you're aligned.

Espinosa, Jaime   41:03
But I'm coming, I'm getting to the point.

Singh, Vishuka   41:04
Yeah.
Yes, initially in our mind we are doctorate, but when we speak it is graduate level. So.

Espinosa, Jaime   41:07
OK.
Yeah, yeah, exactly.

Singh, Vishuka   41:13
So, initially, it's like that, so...

Espinosa, Jaime   41:16
It's got a lot of finance jargon, right? It's a pre-finance jargon, so yeah.

Singh, Vishuka   41:20
Yes, yes.
And you asked about difference. I was like worried because there are even more confusing terms like your revenue accrual and then you have your deferred revenue. And then you have like accrual expense and like so many terms that I need to learn.

Espinosa, Jaime   41:39
Oh.
Well, I can make, I can assure you I need to learn more about finance, but hey, thank you. So, well, what about tomorrow? Where are we working tomorrow?

Singh, Vishuka   41:48
Like.
Yeah.
Tomorrow I will be working, sitting along with Srinivas Shaziya to develop the next set of KPI. Such things Shaziya has developed today. Shaziya, could you please showcase any update like the chart we were discussing? Maybe we can show that to Jaime. There are around 10 KPI that we expect to be present on the screen for the build phase. We are building that.

Espinosa, Jaime   42:24
Okay.

Singh, Vishuka   42:25
Starting from tomorrow, possibly I will, if Siva is present, I will showcase first set of logic for on book liability exposure index.
Because that will require his feedback. I don't get the confidence unless he approves it.

Shaziya, Mohammad   42:43
There you go.

Singh, Vishuka   42:43
So Shaziya, yeah, Shaziya is working on it. This is average days open trend. So we are in a conflict in the sense you can say, should we take it like that based on the current date or should we give a monthly weighted average for the number of days the purchase order have remained in a month?
in a month. So that is the discussion we will take out up to Siva. Like he has more, yeah, he has more experience. Yeah, he will know, yeah, he will know what business would make value of, like would they like to see it as a work list item?

Espinosa, Jaime   43:10
Siva, yeah.
Inside Finance, yeah.
Yeah, yeah, yeah, I agree.

Singh, Vishuka   43:23
based on the current date or would they like to see what is their average per month performance?

Espinosa, Jaime   43:30
Agree.

Singh, Vishuka   43:30
So...
Which is why this is like this took some time for all of us to be aligned. So.

Espinosa, Jaime   43:38
Yep.
I got it. Okay. Seems okay to me right now.

Singh, Vishuka   43:41
Seo.
Tia.

Espinosa, Jaime   43:44
And I do agree, talking with Siva regarding that point.

Singh, Vishuka   43:48
Yep.
So, I mean, this is all. We will, each day we will be working on the set of KPI. Hopefully by the end of, I think you mentioned 10th of July is the last date. So I hope we will be able to complete our build phase with the BPT and documentation and everything.

Espinosa, Jaime   43:52
Okay.
Yeah.
Please don't hope, let's try to do it.

Singh, Vishuka   44:11
Yes, yes.

Shaziya, Mohammad   44:11
Yeah.

Espinosa, Jaime   44:13
Yeah, yeah. We don't, yeah, yeah, because I was called the attention regarding how are we going, how are we doing. I explained about the delay, but yeah, at the end of the day.

Singh, Vishuka   44:17
It.
Yeah.

Espinosa, Jaime   44:26
They just ask request. Okay, so please do me a favor for the meeting. In my case, it's I think it's 7:30 for you for my 7 A.m. I saw you already have some task for initial build phase. Please make sure that...

Singh, Vishuka   44:35
Mhm.

Espinosa, Jaime   44:46
complete the task tracker regarding if most of the, I mean, if hack phase is already done, make sure that current task to be updated as completed, present, and not in process, right? And if possible, I do understand, I see that now you have already.

Singh, Vishuka   44:56
Completed.
Okay, okay, the.

Shaziya, Mohammad   45:00
Okay.

Espinosa, Jaime   45:05
put some of the task for this build phase. If you can add further tasks, I mean that you can foresee for the moment so we can keep planning on it. Because I saw some like overall or pretty general planning, but it is no way to track it for me. So is that okay for my request for you?
Regarding updating tracker for the for the current to complete update, and also if possible to add for whatever task you can foresee for the incoming weeks and build phase.
K.
